
// This is a kernel-module, because there are multiple implementations for twi_handleRpcRequest.

#include "server_handler_functions.h"

// The uthash structure storing all registered handler functions.
PTwiFunction twiRpcFunctions = NULL;

TwiRpcHandlerFunction *find_handler_function(byte operation) {
    PTwiFunction handler = NULL;
    HASH_FIND_BYTE(twiRpcFunctions, &operation, handler);
    return handler ? handler->handlerFunction : NULL;
}

// buffer contains the arguments and the result afterwards.
RpcHandlerStatus twi_handleRpcRequest(byte operation, TWIBuffer *buffer) {
    TwiRpcHandlerFunction *handlerFunction = find_handler_function(operation);
    if (handlerFunction) {
        return handlerFunction(buffer);
    } else {
        buffer->size = 0;
        return TWI_RPC_handler_illegal_operation;
    }
}
