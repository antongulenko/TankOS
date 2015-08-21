
#include <unity.h>
#include <twi/rpc/strings.h>

void setUp() {
}

void tearDown() {
}

void test_client_status_string() {
    TEST_ASSERT_EQUAL_STRING("RPC call success", RpcClientStatus_string(TWI_RPC_call_success));
    TEST_ASSERT_EQUAL_STRING("RPC call success (oneway)", RpcClientStatus_string(TWI_RPC_call_success_oneway));
    TEST_ASSERT_EQUAL_STRING("RPC call error: send buffer too small", RpcClientStatus_string(TWI_RPC_call_error_send_buffer_too_small));
    TEST_ASSERT_EQUAL_STRING("RPC call driver error", RpcClientStatus_string(TWI_RPC_call_error_driver));
    TEST_ASSERT_EQUAL_STRING("RPC call server error", RpcClientStatus_string(TWI_RPC_call_error_server));
    TEST_ASSERT_EQUAL_STRING("RPC call error: wrong operation byte", RpcClientStatus_string(TWI_RPC_call_error_wrong_operation_byte));
    TEST_ASSERT_EQUAL_STRING("RPC call unknown error", RpcClientStatus_string(TWI_RPC_call_error_unknown));
    TEST_ASSERT_EQUAL_STRING("RPC call invalid status (2)", RpcClientStatus_string(TWI_RPC_call_error));
    TEST_ASSERT_EQUAL_STRING("RPC call invalid status (100)", RpcClientStatus_string(100));
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

void test_client_result_string() {
    TEST_ASSERT_EQUAL_STRING("RPC(RPC call success, RPC server no error, RPC handler ok)",
                             RpcClientResult_string((RpcClientResult) { TWI_RPC_call_success, TWI_RPC_handler_ok, TWI_RPC_no_error }));
    // This should be the lognest possible string result, 128 chars.
    TEST_ASSERT_EQUAL_STRING("RPC(RPC call error: send buffer too small, RPC server second transaction started without ending, RPC handler illegal parameters)",
                             RpcClientResult_string((RpcClientResult) { TWI_RPC_call_error_send_buffer_too_small,
                                                                       TWI_RPC_handler_illegal_parameters, TWI_RPC_error_double_start }));
    TEST_ASSERT_EQUAL_STRING("RPC(RPC call invalid status (100), RPC server twi error (20), RPC handler error 60)",
                             RpcClientResult_string((RpcClientResult) { 100, TWI_RPC_handler_error + 60, TWI_RPC_error_driver + 20 }));
}
