
#include "example.h"
#include <stdio.h>
#include <twi/rpc/server_handler_functions.h>

static int32_t test_value;

static RpcHandlerStatus test_write_value_handler(int32_t *args, uint16_t size) {
    if (size != sizeof(int32_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    test_value = *args;
    printf("Written value: %i\n", (int) test_value);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(test_write_value_handler, TEST_WRITE_VALUE_OPERATION, int32_t)

static RpcHandlerStatus test_read_value_handler(TWIBuffer *results) {
    printf("Reading value: %i\n", (int) test_value);
    FILL_RESULT(results, int32_t, test_value)
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(test_read_value_handler, TEST_READ_VALUE_OPERATION)

static RpcHandlerStatus test_increment_value_handler() {
    test_value++;
    printf("Incremented value: %i\n", (int) test_value);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(test_increment_value_handler, TEST_INC_VALUE_OPERATION)

static RpcHandlerStatus test_reset_value_handler() {
    test_value = 0;
    printf("Reset value: %i\n", (int) test_value);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(test_reset_value_handler, TEST_RESET_VALUE_OPERATION)
