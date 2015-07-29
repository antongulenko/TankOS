
#include "twi-master-linux.h"
#include <stdio.h>
#include <errno.h>
#include <kernel/twi/rpc/client_functions_registry.h>
#include <kernel/twi/rpc/strings.h>

#define BUS_NUM 0
byte rpc_buffer[1024];

void check_error() {
    if (twi_error != TWI_No_Error) {
        printf("twi_error: %i\n", twi_error);
        if (twi_error_description != NULL)
            printf("Additional description: %s\n", twi_error_description);
        exit(1);
    }
}

void printFunctions() {
    printf("Available functions:\n");
    ClientFunctionRegistryEntry iter;
    for (iter = clientFunctionRegisty; iter != NULL; iter = iter->hh.next) {
        printf("%s\n", iter->name);
    }
}

int main(int argc, char **argv) {
    if (argc != 3) {
        printf("Need 2 parameters: Device address (hex), query-function to apply.\n");
        printFunctions();
        exit(1);
    }

    int device_addr = (int) strtol(argv[1], NULL, 16);
    if (device_addr == 0 && errno == EINVAL) {
        printf("Failed to parse hex device address: %s\n", argv[1]);
        exit(1);
    }

    char *funcName = argv[2];
    RpcQueryFunction func = lookupClientFunction(funcName);
    if (func == NULL) {
        printf("Function not registered: %s\n", funcName);
        printFunctions();
        exit(1);
    }

    printf("Using %s for device address %x on bus %i\n", funcName, device_addr, BUS_NUM);

    twi_init();
    twi_rpc_client_init((TWIBuffer) { rpc_buffer, sizeof(rpc_buffer) });
    bus_number = BUS_NUM;

    TWIDevice device = { device_addr };
    // TODO handle parameters and results...
    RpcClientResult res = func(device);
    char *res_str = RpcClientResult_string(res);
    check_error();
    printf("%s\n", res_str);

    return 0;
}

/*
    bus_number = 0;
    twi_init();
    check_error();
    byte data[10] = {0};
    TWIBuffer buf = { (byte*) &data, sizeof(data) };

    twiReceive(device, buf);
    check_error();

    printf("Received data: ");
    for (int i = 0; i < sizeof(data); i++) {
        printf("%x ", data[i]);
    }
    printf("\n");
*/
