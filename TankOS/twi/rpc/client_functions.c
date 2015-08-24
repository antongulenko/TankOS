
#include <kernel/klib.h>
#include "client_functions.h"
#include "client_functions_registry.h"

ClientFunctionRegistryEntry clientFunctionRegisty = NULL;

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

void registerClientFunction(char *funcName, RpcQueryFunction function, uint8_t argument_bytes, uint8_t result_bytes,
                            BOOL variable_arguments, BOOL variable_results, byte operation, ClientResultFormatter result_formatter) {
    ClientFunctionRegistryEntry entry = kcalloc(1, sizeof(struct ClientFunctionRegistryEntry));
    if (!entry) return;
    entry->name = funcName;
    entry->function = function;
    entry->argument_bytes = argument_bytes;
    entry->result_bytes = result_bytes;
    entry->variable_arguments = variable_arguments;
    entry->variable_results = variable_results;
    entry->operation = operation;
    entry->format_results = result_formatter;
    HASH_ADD_STR(clientFunctionRegisty, name, entry);
}

ClientFunctionRegistryEntry lookupClientFunction(char *name) {
    ClientFunctionRegistryEntry result = NULL;
    HASH_FIND_STR(clientFunctionRegisty, name, result);
    if (result != NULL)
        return result;
    else
        return NULL;
}
