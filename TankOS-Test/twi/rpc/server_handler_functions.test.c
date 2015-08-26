
#include <platform/twi/master.h>
#include <twi/rpc/server.h>
#include <twi/rpc/client.h>
#include <mocks/twi_driver_slave.h>
#include <mocks/rpc_server.h>
#include <mocks/assertions.h>
#include <unity.h>

BOOL received_normal, received_void, received_noargs, received_notify;

const TWIDevice device = { 0x9c }; // This is not evaluated.

TestArgStruct argData = { 45, 8.3 };
static const TWIBuffer sendBuffer = { (byte*) &argData, sizeof(argData) };
TestResStruct resData;
static const TWIBuffer receiveBuffer = { (byte*) &resData, sizeof(resData) };

byte clientLibraryBuffer[100];
byte serverLibraryBuffer[100];

void setUp() {
    memset(clientLibraryBuffer, 0, sizeof(clientLibraryBuffer));
    memset(serverLibraryBuffer, 0, sizeof(serverLibraryBuffer));
    twi_rpc_client_init((TWIBuffer) { clientLibraryBuffer, sizeof(clientLibraryBuffer) });
    twi_rpc_server_init((TWIBuffer) { serverLibraryBuffer, sizeof(serverLibraryBuffer) });

    init_test_rpc_server();
    memset(&resData, 0, sizeof(resData));
}

void tearDown() {
    TEST_ASSERT_FALSE_MESSAGE(received_normal, "Routine 'normal' has been called unexpectedly");
    TEST_ASSERT_FALSE_MESSAGE(received_void, "Routine 'void' has been called unexpectedly");
    TEST_ASSERT_FALSE_MESSAGE(received_noargs, "Routine 'noargs' has been called unexpectedly");
    TEST_ASSERT_FALSE_MESSAGE(received_notify, "Routine 'notify' has been called unexpectedly");
}

void test_rpc_function() {
    RpcClientResult result = twi_rpc(device, OP_RPC_NORMAL, sendBuffer, receiveBuffer);
    assert_correct_status(result);

    TEST_ASSERT_MESSAGE(received_normal, "Routine 'normal' not called");
    received_normal = FALSE;

    TEST_ASSERT_EQUAL_INT_MESSAGE(46, resData.res0, "res0 unexpected value");
    TEST_ASSERT_EQUAL_FLOAT_MESSAGE(11.3, resData.res1, "res1 unexpected value");
    TEST_ASSERT_EQUAL_STRING("Ho", resData.res2);
    TEST_ASSERT_EQUAL_INT_MESSAGE(45, receivedArgs.arg1, "arg1 unexpected value");
    TEST_ASSERT_EQUAL_FLOAT_MESSAGE(8.3, receivedArgs.arg2, "arg2 unexpected value");
}

void test_rpc_void_function() {
    RpcClientResult result = twi_rpc_void(device, OP_RPC_VOID, sendBuffer);
    assert_correct_status(result);

    TEST_ASSERT_MESSAGE(received_void, "Routine 'void' not called");
    received_void = FALSE;

    TEST_ASSERT_EQUAL_INT_MESSAGE(45, receivedArgs.arg1, "arg1 unexpected value");
    TEST_ASSERT_EQUAL_FLOAT_MESSAGE(8.3, receivedArgs.arg2, "arg2 unexpected value");
}

void test_rpc_noargs_function() {
    RpcClientResult result = twi_rpc(device, OP_RPC_NOARGS, sendBuffer, receiveBuffer);
    assert_correct_status(result);

    TEST_ASSERT_MESSAGE(received_noargs, "Routine 'noargs' not called");
    received_noargs = FALSE;

    TEST_ASSERT_EQUAL_INT_MESSAGE(defaultResult.res0, resData.res0, "res0 unexpected value");
    TEST_ASSERT_EQUAL_FLOAT_MESSAGE(defaultResult.res1, resData.res1, "res1 unexpected value");
    TEST_ASSERT_EQUAL_STRING(defaultResult.res2, resData.res2);
}

void test_rpc_notify_function() {
    RpcClientResult result = twi_rpc_void(device, OP_RPC_NOTIFY, sendBuffer);
    assert_correct_status(result);

    TEST_ASSERT_MESSAGE(received_notify, "Routine 'notify' not called");
    received_notify = FALSE;
}

void test_rpc_real_oneway_function() {
    RpcClientResult result = twi_rpc_async(device, OP_RPC_NOTIFY, sendBuffer);
    assert_status(result, (RpcClientResult) { TWI_RPC_call_success_oneway, TWI_RPC_handler_unknown, TWI_RPC_unknown });

    TEST_ASSERT_MESSAGE(received_notify, "Routine 'notify' not called");
    received_notify = FALSE;
}

void test_rpc_real_oneway_function_discarded_response() {
    twi_rpc_async(device, OP_RPC_NOTIFY, sendBuffer);
    RpcClientResult result = twi_rpc_void(device, OP_RPC_NOTIFY, sendBuffer);

    assert_status(result, (RpcClientResult) { TWI_RPC_call_success, TWI_RPC_handler_ok, TWI_RPC_previous_response_discarded });

    TEST_ASSERT_MESSAGE(received_notify, "Routine 'notify' not called");
    received_notify = FALSE;
}
