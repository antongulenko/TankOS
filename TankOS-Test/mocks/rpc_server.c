
#include "rpc_server.h"
#include <twi/rpc/server_handler.h>

const TestResStruct defaultResult = { 34, 66.76, "He" };
TestArgStruct receivedArgs;

BOOL received_normal, received_void, received_noargs, received_notify;

void init_test_rpc_server() {
    received_normal = received_void = received_noargs = received_notify = FALSE;
    memset(&receivedArgs, 0, sizeof(receivedArgs));
}

RpcHandlerStatus server_function(TestArgStruct *args, uint16_t argSize, TWIBuffer *resultBuffer) {
    received_normal = TRUE;
    if (argSize != sizeof(TestArgStruct))
        return TWI_RPC_handler_illegal_parameters;
    receivedArgs = *args;
    args->arg1++;
    args->arg2 += 3.0;
    FILL_VAR_RESULT(resultBuffer, args, sizeof(TestArgStruct))
    memcpy(((TestResStruct*) resultBuffer->data)->res2, "Ho", 3);
    resultBuffer->size += (sizeof(TestResStruct) - sizeof(TestArgStruct));
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION(server_function, OP_RPC_NORMAL, TestArgStruct)

RpcHandlerStatus server_void_function(TestArgStruct *args, uint16_t size) {
    received_void = TRUE;
    if (size != sizeof(TestArgStruct))
        return TWI_RPC_handler_illegal_parameters;
    receivedArgs = *args;
    if (args->arg1 == (int) args->arg2) {
        return TWI_RPC_handler_error + 20;
    }
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(server_void_function, OP_RPC_VOID, TestArgStruct)

RpcHandlerStatus server_noargs_function(TWIBuffer *resultBuffer) {
    received_noargs = TRUE;
    FILL_RESULT(resultBuffer, TestResStruct, defaultResult)
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(server_noargs_function, OP_RPC_NOARGS)

RpcHandlerStatus server_notify_function() {
    received_notify = TRUE;
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(server_notify_function, OP_RPC_NOTIFY)
