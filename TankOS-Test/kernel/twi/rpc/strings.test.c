
#include <unity.h>
#include <kernel/twi/rpc/status.h>
#include <kernel/twi/rpc/server_handler.h>

void setUp() {
}

void tearDown() {
}

void test_handler_status_string() {
    TEST_ASSERT_EQUAL_STRING("RPC handler ok", RpcHandlerStatus_string(TWI_RPC_handler_ok));
    TEST_ASSERT_EQUAL_STRING("RPC handler illegal parameters", RpcHandlerStatus_string(TWI_RPC_handler_illegal_parameters));
    TEST_ASSERT_EQUAL_STRING("RPC handler illegal operation", RpcHandlerStatus_string(TWI_RPC_handler_illegal_operation));
    TEST_ASSERT_EQUAL_STRING("RPC handler status unknown", RpcHandlerStatus_string(TWI_RPC_handler_unknown));
    TEST_ASSERT_EQUAL_STRING("RPC handler error 44", RpcHandlerStatus_string(TWI_RPC_handler_error + 44));
}

void test_server_status_string() {
    TEST_ASSERT_EQUAL_STRING("RPC server no error", RpcServerStatus_string(TWI_RPC_no_error));
    TEST_ASSERT_EQUAL_STRING("RPC server previous response discarded", RpcServerStatus_string(TWI_RPC_previous_response_discarded));
    TEST_ASSERT_EQUAL_STRING("RPC server unknown status", RpcServerStatus_string(TWI_RPC_unknown));
    TEST_ASSERT_EQUAL_STRING("RPC server handler error", RpcServerStatus_string(TWI_RPC_error_handler));
    TEST_ASSERT_EQUAL_STRING("RPC server operation byte missing", RpcServerStatus_string(TWI_RPC_error_missing_operation_byte));
    TEST_ASSERT_EQUAL_STRING("RPC server buffer too small", RpcServerStatus_string(TWI_RPC_error_buffer_too_small));
    TEST_ASSERT_EQUAL_STRING("RPC server unknown error", RpcServerStatus_string(TWI_RPC_error_unknown));
    TEST_ASSERT_EQUAL_STRING("RPC server second transaction started without ending", RpcServerStatus_string(TWI_RPC_error_double_start));
    TEST_ASSERT_EQUAL_STRING("RPC server transaction ended without starting", RpcServerStatus_string(TWI_RPC_error_standalone_end));
    TEST_ASSERT_EQUAL_STRING("RPC server twi error (4)", RpcServerStatus_string(TWI_RPC_error_driver + 4));

    TEST_ASSERT_EQUAL_STRING("RPC server invalid status (0)", RpcServerStatus_string(0));
    TEST_ASSERT_EQUAL_STRING("RPC server invalid status (5)", RpcServerStatus_string(5));
    TEST_ASSERT_EQUAL_STRING("RPC server invalid status (18)", RpcServerStatus_string(18));
    TEST_ASSERT_EQUAL_STRING("RPC server invalid status (20)", RpcServerStatus_string(20));
}
