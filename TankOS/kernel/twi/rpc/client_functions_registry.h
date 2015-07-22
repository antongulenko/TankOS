#ifndef TWI_CLIENT_FUNCTIONS_REGISTRY_H_
#define TWI_CLIENT_FUNCTIONS_REGISTRY_H_

#include "client_functions.h"
#include <uthash/uthash.h>

typedef struct {
    char *name;
    RpcQueryFunction function;
    UT_hash_handle hh;
} _ClientFunctionRegistryEntry, *ClientFunctionRegistryEntry;

ClientFunctionRegistryEntry clientFunctionRegisty = NULL;

#endif // TWI_CLIENT_FUNCTIONS_REGISTRY_H_
