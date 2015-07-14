
#include "hardware.h"
#include <kernel/twi/rpc/server_handler_functions.h>
#include <misc/hardware_reset.h>

static RpcHandlerStatus query_reset_status_handler(TWIBuffer *resultBuffer) {
    FILL_RESULT(resultBuffer, ResetCondition, getResetCondition());
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(query_reset_status_handler, QUERY_RESET_STATUS_OPERATION)

static RpcHandlerStatus query_milliseconds_handler(TWIBuffer *resultBuffer) {
    FILL_RESULT(resultBuffer, uint32_t, get_milliseconds_running());
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(query_milliseconds_handler, QUERY_MILLISECONDS_OPERATION)

static RpcHandlerStatus do_hardware_reset_handler() {
    HARDWARE_RESET();
    // This should never really return.
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(do_hardware_reset_handler, HARDWARE_RESET_OPERATION)

static RpcHandlerStatus query_memory_info_handler(TWIBuffer *resultBuffer) {
    FILL_RESULT(resultBuffer, MemoryInfo, memoryInfo());
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(query_memory_info_handler, QUERY_MEMORY_INFO_OPERATION)
