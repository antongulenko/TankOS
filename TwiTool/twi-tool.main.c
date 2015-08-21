
#include "twi-master-linux.h"
#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <stdlib.h>
#include <twi/rpc/client_functions_registry.h>
#include <twi/rpc/strings.h>

#define DEFAULT_BUS_NUM 0
byte rpc_buffer[1024*4];

void check_error() {
    if (twi_error != TWI_No_Error) {
        printf("twi_error: %i\n", twi_error);
        if (twi_error_description != NULL)
            printf("Additional description: %s\n", twi_error_description);
        exit(1);
    }
}

int parse_int(const char *value, int base, const char* description) {
    char *garbage = NULL;
    int result = (int) strtol(value, &garbage, base);
    if ((result == 0 && (errno == EINVAL || errno == ERANGE)) || (garbage != NULL && strlen(garbage) > 0)) {
        printf("Failed to parse %s: %s (Garbage in string is %s)\n", description, value, garbage);
        exit(1);
    }
    return result;
}

void printFunction(ClientFunctionRegistryEntry entry) {
    char buf1[5] = {0}, buf2[5] = {0};

    if (entry->variable_arguments)
        strcpy(buf1, "...");
    else
        snprintf(buf1, sizeof(buf1) - 1, "%i", entry->argument_bytes);
    if (entry->variable_results)
        strcpy(buf2, "...");
    else
        snprintf(buf2, sizeof(buf2) - 1, "%i", entry->result_bytes);

    printf("%02x/%s(%s)->(%s)", entry->operation, entry->name, buf1, buf2);
}

void printFunctions() {
    printf("Available functions:\n");
    ClientFunctionRegistryEntry iter;
    for (iter = clientFunctionRegisty; iter != NULL; iter = iter->hh.next) {
        printf("* ");
        printFunction(iter);
        printf("\n");
    }
}

static void help() {
    printf("Usage: -d <device name (hex)> -f <function name> [-b <bus number = %i>]\n", DEFAULT_BUS_NUM);
    printFunctions();
    exit(1);
}

BOOL is_simple_function(ClientFunctionRegistryEntry entry) {
    return
        entry->argument_bytes == 0 && entry->variable_arguments == FALSE &&
        entry->result_bytes == 0 && entry->variable_results == FALSE;
}

void call_api(TWIDevice device, ClientFunctionRegistryEntry entry) {
    RpcQueryFunction func = entry->function;
    printf("Directly using API function at %p\n", func);

    RpcClientResult res = func(device);
    char *res_str = RpcClientResult_string(res);
    check_error();
    printf("%s\n", res_str);
}

void call_meta(TWIDevice device, ClientFunctionRegistryEntry entry, byte *parameters, int param_size, int result_size) {
    printf("Sending %i bytes and receiving %i bytes\n", param_size, result_size);

    byte *results = alloca(result_size);
    TWIBuffer result_buf = { results, result_size };
    TWIBuffer param_buf = { parameters, param_size };

    // TODO also use result-less calls twi_rpc_void / twi_rpc_async ?
    twi_rpc(device, entry->operation, param_buf, result_buf);
    check_error();

    printf("Received data: ");
    for (int i = 0; i < result_size; i++) {
        printf("%02x ", results[i]);
    }
    printf("\n");
}

void init_libraries(int bus_nr) {
    bus_number = bus_nr;
    twi_init_linux();
    twi_rpc_client_init((TWIBuffer) { rpc_buffer, sizeof(rpc_buffer) });
    check_error();
}

int main(int argc, char **argv) {
    byte param_buf[1024] = {0};
    int params = 0;
    int device_addr = -1;
    char *funcName = NULL;
    int bus_nr = -1;
    int c;
    while ( (c = getopt(argc, argv, "d:f:b:p:")) != -1) {
        switch (c) {
        case 'd':
            if (device_addr != -1) help();
            device_addr = parse_int(optarg, 16, "hex device address");
            break;
        case 'f':
            if (funcName != NULL) help();
            funcName = optarg;
            break;
        case 'b':
            if (bus_nr != -1) help();
            bus_nr = parse_int(optarg, 10, "bus number");
            break;
        case 'p':
            if (params >= sizeof(param_buf)) {
                printf("Too many parameter bytes!\n");
                exit(1);
            }
            int p = parse_int(optarg, 16, "parameter hex byte");
            param_buf[params] = p;
            params++;
            break;
        default:
            help();
        }
    }
    if (!funcName || device_addr == -1) help();
    if (bus_nr == -1) bus_nr = DEFAULT_BUS_NUM;
    TWIDevice device = { device_addr };

    // == Lookup registered function entry
    ClientFunctionRegistryEntry entry = lookupClientFunction(funcName);
    if (entry == NULL) {
        printf("Function not registered: %s\n", funcName);
        printFunctions();
        exit(1);
    }
    printf("Calling ");
    printFunction(entry);
    printf(" on device 0x%02x on bus %i\n", device_addr, bus_nr);

    if (is_simple_function(entry) && params == 0) {
        init_libraries(bus_nr);
        call_api(device, entry);
    } else {
        if (!entry->variable_arguments && entry->argument_bytes != params) {
            printf("%s needs %i argument bytes, but %i were given.\n", entry->name, entry->argument_bytes, params);
            exit(1);
        }
        if (entry->variable_results) {
            printf("Variable result sizes not implemented\n");
            exit(1);
        }

        init_libraries(bus_nr);
        call_meta(device, entry, param_buf, params, entry->result_bytes);
    }

    return 0;
}
