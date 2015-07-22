
#include "client_functions.h"
#include "client_functions_registry.h"

RpcClientResult twi_rpc_client(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize, byte *out_result, uint16_t resultSize) {
    TWIBuffer argBuf = (TWIBuffer) { parameters, argSize };
	TWIBuffer resBuf = (TWIBuffer) { out_result, resultSize };
	RpcClientResult res = twi_rpc(device, operationByte, argBuf, resBuf);
	twiWaitForCompletion();
    return res;
}

RpcClientResult twi_rpc_client_void(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize) {
    TWIBuffer buf = (TWIBuffer) { parameters, argSize };
    RpcClientResult res = twi_rpc_void(device, operationByte, buf);
	twiWaitForCompletion();
    return res;
}

RpcClientResult twi_rpc_client_async(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize) {
    TWIBuffer buf = (TWIBuffer) { parameters, argSize };
    RpcClientResult res = twi_rpc_async(device, operationByte, buf);
	twiWaitForCompletion();
    return res;
}

void registerClientFunction(char *funcName, RpcQueryFunction function) {
    ClientFunctionRegistryEntry entry = calloc(1, sizeof(_ClientFunctionRegistryEntry));
    entry->name = funcName;
    entry->function = function;
    HASH_ADD_STR(clientFunctionRegisty, name, entry);
}

RpcQueryFunction lookupClientFunction(char *name) {
    ClientFunctionRegistryEntry result = NULL;
    HASH_FIND_STR(clientFunctionRegisty, name, result);
    if (result != NULL)
        return result->function;
    else
        return NULL;
}
