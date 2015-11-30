
#include "twi-master.h"
#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <stdarg.h>
#include <stdlib.h>
#include <twi/rpc/client_functions_registry.h>
#include <twi/rpc/strings.h>

byte rpc_buffer[1024*4];
BOOL debug_mode = FALSE;

void check_error() {
    if (twi_error != TWI_No_Error) {
        fprintf(stderr, "twi_error %i: ", twi_error);
        if (twi_error_description != NULL) fprintf(stderr, "%s", twi_error_description);
        fprintf(stderr, "\n");
        exit(1);
    }
}

int parse_int(const char *value, int base, const char* description) {
    char *garbage = NULL;
    int result = (int) strtol(value, &garbage, base);
    if ((result == 0 && (errno == EINVAL || errno == ERANGE)) || (garbage != NULL && strlen(garbage) > 0)) {
        fprintf(stderr, "Failed to parse %s: %s (Garbage in string is %s)\n", description, value, garbage);
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

    fprintf(stderr, "%03u/%s(%s)->(%s)", entry->operation, entry->name, buf1, buf2);
}

void printFunctions() {
    fprintf(stderr, "Available functions:\n");
    ClientFunctionRegistryEntry iter;
    for (iter = clientFunctionRegisty; iter != NULL; iter = iter->hh.next) {
        fprintf(stderr, "* ");
        printFunction(iter);
        fprintf(stderr, "\n");
    }
}

static void help() {
    fprintf(stderr, "Usage: -d <device name (hex)> -f <function name> -b <bus number> [-D(ebug)]");
    fprintf(stderr, "[-p <parameter hex byte>]* [-v <variable result size>]\n");
    printFunctions();
    exit(1);
}

void printReceived(TWIBuffer result_buf) {
    fprintf(stderr, "Received data: ");
    for (int i = 0; i < result_buf.size; i++) {
        fprintf(stderr, "%02x ", result_buf.data[i]);
    }
    fprintf(stderr, "\n");
}

int call(TWIDevice device, ClientFunctionRegistryEntry entry, byte *parameters, int param_size, int result_size) {
    byte *results = alloca(result_size);
    if (!results) {
        fprintf(stderr, "alloca %i failed\n", result_size);
        return 1;
    }
    TWIBuffer result_buf = { results, result_size };
    TWIBuffer param_buf = { parameters, param_size };

    RpcClientResult res = twi_rpc(device, entry->operation, param_buf, result_buf);
    check_error();
    if (res.status != TWI_RPC_call_success) {
        char *res_str = RpcClientResult_string(res);
        fprintf(stderr, "Result status: %s\n", res_str);
        printReceived(result_buf);
        return 1;
    } else {
        if (entry->result_bytes > 0 || entry->variable_results) {
            if (entry->format_results != NULL) {
                entry->format_results(printf, result_buf.data, result_buf.size);
                printf("\n");
                return 0;
            } else {
                fprintf(stderr, "No format_results function registered!");
                printReceived(result_buf);
                return 1;
            }
        } else {
            fprintf(stderr, "Call successfull\n");
            return 0;
        }
    }
}

void init_libraries(char *param) {
    twi_init_linux(param);
    twi_rpc_client_init((TWIBuffer) { rpc_buffer, sizeof(rpc_buffer) });
    check_error();
}

int main(int argc, char **argv) {
    byte param_buf[1024] = {0};
    int params = 0;
    int device_addr = -1;
    char *funcName = NULL;
    char *library_param = NULL;
    int c;
    BOOL var_res_given = FALSE;
    int var_res_size = 0;
    while ( (c = getopt(argc, argv, "d:f:b:p:v:D")) != -1) {
        switch (c) {
        case 'D':
            print_buffer_contents = TRUE;
            debug_mode = TRUE;
            break;
        case 'd':
            if (device_addr != -1) help();
            device_addr = parse_int(optarg, 16, "hex device address");
            break;
        case 'f':
            if (funcName != NULL) help();
            funcName = optarg;
            break;
        case 'b':
            if (library_param != NULL) help();
            library_param = optarg;
            break;
        case 'p':
            if (params >= sizeof(param_buf)) {
                fprintf(stderr, "Too many parameter bytes!\n");
                exit(1);
            }
            int p = parse_int(optarg, 16, "parameter hex byte");
            param_buf[params] = p;
            params++;
            break;
        case 'v':
            if (var_res_given) help();
            var_res_size = parse_int(optarg, 10, "variable result size");
            if (var_res_size <= 0) {
                fprintf(stderr, "-v parameter must be positive");
                exit(1);
            }
            var_res_given = TRUE;
            break;
        default:
            help();
        }
    }
    if (!funcName || device_addr == -1) help();
    if (library_param == NULL) help();
    TWIDevice device = { device_addr };

    // == Lookup registered function entry
    ClientFunctionRegistryEntry entry = lookupClientFunction(funcName);
    if (entry == NULL) {
        fprintf(stderr, "Function not registered: %s\n", funcName);
        printFunctions();
        exit(1);
    }
    if (debug_mode) {
        fprintf(stderr, "Calling ");
        printFunction(entry);
        fprintf(stderr, " on device 0x%02x, i2c bus parameter %s\n", device_addr, library_param);
    }

    // == Handle required result size
    if (!entry->variable_arguments && entry->argument_bytes != params) {
        fprintf(stderr, "%s needs %i argument bytes, but %i were given.\n", entry->name, entry->argument_bytes, params);
        exit(1);
    }
    int result_size;
    if (entry->variable_results) {
        if (!var_res_given) {
            fprintf(stderr, "Function has variable results, use -v.\n");
            exit(1);
        }
        result_size = var_res_size;
    } else {
        if (var_res_given)
            fprintf(stderr, "Warning: function does not have variable results. Ignoring -v parameter.\n");
        result_size = entry->result_bytes;
    }

    // == Initialize and execute the call
    init_libraries(library_param);
    return call(device, entry, param_buf, params, result_size);
}
