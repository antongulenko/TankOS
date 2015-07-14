
#include "reset_condition.h"
#include <kernel/twi/rpc/server_handler_functions.h>

RpcHandlerStatus query_reset_status_handler(TWIBuffer *resultBuffer) {
    FILL_RESULT(resultBuffer, ResetCondition, getResetCondition());
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(query_reset_status_handler, QUERY_RESET_STATUS_OPERATION)
