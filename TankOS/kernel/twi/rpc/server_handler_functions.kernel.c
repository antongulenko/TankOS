
// This is a kernel-module, because there are multiple implementations for twi_handleRpcRequest.

#include "server_handler_functions.h"

// The hash-structure used by the uthash implementation
PTwiFunction twiRpcFunctions = NULL;

// buffer contains the arguments and the result afterwards.
RpcHandlerStatus twi_handleRpcRequest(byte operation, TWIBuffer *buffer) {
    PTwiFunction handler = NULL;
    HASH_FIND_INT(twiRpcFunctions, &operation, handler);
    //handler = NULL;
    //HASH_FIND_INT(twiRpcFunctions, &operation, handler);
    //handler = NULL;
    if (handler) {
        printf("Invoking function handler\n");
        return handler->handlerFunction(buffer);
    } else {
        buffer->size = 0;
        return TWI_RPC_handler_illegal_operation;
    }
}
