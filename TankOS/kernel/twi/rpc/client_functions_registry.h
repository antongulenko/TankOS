#ifndef TWI_CLIENT_FUNCTIONS_REGISTRY_H_
#define TWI_CLIENT_FUNCTIONS_REGISTRY_H_

#include "client_functions.h"

#define HASH_FUNCTION HASH_SAX
#include <uthash/uthash.h>

typedef struct {
    char *name;
    RpcQueryFunction function;
    UT_hash_handle hh;
} _ClientFunctionRegistryEntry, *ClientFunctionRegistryEntry;

extern ClientFunctionRegistryEntry clientFunctionRegisty;

RpcQueryFunction lookupClientFunction(char *name);

#endif // TWI_CLIENT_FUNCTIONS_REGISTRY_H_
