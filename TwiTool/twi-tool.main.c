
#include "twi-master-linux.h"
#include <stdio.h>
#include <kernel/twi/rpc/client_functions_registry.h>

void check_error() {
    if (twi_error != TWI_No_Error) {
        printf("twi_error: %i\n", twi_error);
        if (twi_error_description != NULL)
            printf("Additional description: %s\n", twi_error_description);
        exit(1);
    }
}

int main(int argc, char **argv) {
    if (argc != 3) {
        printf("Need 2 parameters: Device address (hex), query-function to apply.\n");
        printf("Available functions:\n");
        
        ClientFunctionRegistryEntry iter;
        for (iter = clientFunctionRegisty; iter != NULL; iter = iter->hh.next) {
            printf("%s\n", iter->name);
        }
    }
    
    /*
    bus_number = 0;
    twi_init();
    check_error();
    byte data[10] = {0};
    TWIBuffer buf = { (byte*) &data, sizeof(data) };
    TWIDevice device = { 0x50 };
    twiReceive(device, buf);
    check_error();
    printf("Received data: ");
    for (int i = 0; i < sizeof(data); i++) {
        printf("%x ", data[i]);
    }
    printf("\n");
    */
    return 0;
}

