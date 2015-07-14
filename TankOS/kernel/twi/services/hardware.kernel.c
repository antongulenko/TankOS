
#include "hardware.h"
#include <kernel/twi/rpc/server_handler_functions.h>

RpcHandlerStatus query_reset_status_handler(TWIBuffer *resultBuffer) {
    FILL_RESULT(resultBuffer, ResetCondition, getResetCondition());
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(query_reset_status_handler, QUERY_RESET_STATUS_OPERATION)

RpcHandlerStatus query_milliseconds_handler(TWIBuffer *resultBuffer) {
    FILL_RESULT(resultBuffer, uint32_t, get_milliseconds_running());
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(query_milliseconds_handler, QUERY_MILLISECONDS_OPERATION)
