#ifndef TWI_CLIENT_FUNCTIONS_REGISTRY_H_
#define TWI_CLIENT_FUNCTIONS_REGISTRY_H_

#include "client_functions.h"

#define HASH_FUNCTION HASH_SAX
#include <uthash/uthash.h>

typedef int (*ClientResultFormatter)(int (*print)(const char *fmt, ...), void *results, uint16_t results_length);

typedef struct ClientFunctionRegistryEntry {
    char *name;
    RpcQueryFunction function;
    uint8_t argument_bytes;
    uint8_t result_bytes;
    BOOL variable_arguments;
    BOOL variable_results;
    ClientResultFormatter format_results;
    byte operation;
    UT_hash_handle hh;
} *ClientFunctionRegistryEntry;

extern ClientFunctionRegistryEntry clientFunctionRegisty;

ClientFunctionRegistryEntry lookupClientFunction(char *name);

#endif // TWI_CLIENT_FUNCTIONS_REGISTRY_H_
