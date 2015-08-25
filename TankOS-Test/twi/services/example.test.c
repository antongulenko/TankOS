
#include <twi/services/example.h>

#include <twi/rpc/server.h>
#include <twi/rpc/client.h>
#include <twi/rpc/strings.h>
#include <mocks/rpc_client.h>
#include <mocks/printf.h>
#include <twi/rpc/client_functions_registry.h>

#include <unity.h>
#include <mocks/assertions.h>
#include <string.h>

byte clientLibraryBuffer[100];
byte serverLibraryBuffer[100];

void setUp() {
    memset(clientLibraryBuffer, 0, sizeof(clientLibraryBuffer));
    memset(serverLibraryBuffer, 0, sizeof(serverLibraryBuffer));
    twi_rpc_client_init((TWIBuffer) { clientLibraryBuffer, sizeof(clientLibraryBuffer) });
    twi_rpc_server_init((TWIBuffer) { serverLibraryBuffer, sizeof(serverLibraryBuffer) });
}

void tearDown() {
}

void test_test_service() {
    int32_t value;

    assert_correct_status(test_reset_value(test_device));
    assert_correct_status(test_read_value(test_device, &value));
    TEST_ASSERT_EQUAL_INT32_MESSAGE(0, value, "Wrong test value 1");
    assert_correct_status(test_write_value(test_device, 45));
    assert_correct_status(test_read_value(test_device, &value));
    TEST_ASSERT_EQUAL_INT32_MESSAGE(45, value, "Wrong test value 2");
    assert_correct_status(test_increment_value(test_device));
    assert_correct_status(test_increment_value(test_device));
    assert_correct_status(test_read_value(test_device, &value));
    TEST_ASSERT_EQUAL_INT32_MESSAGE(47, value, "Wrong test value 3");
    assert_correct_status(test_write_value(test_device, 107));
    assert_correct_status(test_read_value(test_device, &value));
    TEST_ASSERT_EQUAL_INT32_MESSAGE(107, value, "Wrong test value 4");
    assert_correct_status(test_reset_value(test_device));
    assert_correct_status(test_read_value(test_device, &value));
    TEST_ASSERT_EQUAL_INT32_MESSAGE(0, value, "Wrong test value 5");
}

TWI_RPC_FUNCTION_VOID(wrong_test_write_value, TEST_WRITE_VALUE_OPERATION, int16_t)

void test_wrong_data_sent() {
    RpcClientResult status = wrong_test_write_value(test_device, 22);
    assert_status((RpcClientResult) { TWI_RPC_call_error_server, TWI_RPC_handler_illegal_parameters, TWI_RPC_error_handler }, status);
}

void test_format_results() {
    init_mock_printf();
    ClientFunctionRegistryEntry f = lookupClientFunction("test_read_value");
    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_NOT_NULL(f->format_results);

    int32_t res;
    test_write_value(test_device, 4500);
    test_read_value(test_device, &res);

    f->format_results(mock_printf, &res, sizeof(res));
    TEST_ASSERT_EQUAL_STRING("Test value: 4500", mock_printf_buffer);
}
