
#include <kernel/twi/driver/master.h>
#include <mocks/twi_driver_slave.h>
#include <mocks/rpc_server.h>
#include <unity.h>

BOOL received_normal, received_void, received_noargs, received_notify;

const TWIDevice device = { 0x9c };

TestArgStruct argData = { 45, 8.3 };
static const TWIBuffer sendBuffer = { (byte*) &argData, sizeof(argData) };
TestResStruct resData;
static const TWIBuffer receiveBuffer = { (byte*) &resData, sizeof(resData) };

RpcClientResult result;

byte clientLibraryBuffer[100];
byte serverLibraryBuffer[100];

void setUp() {
    memset(clientLibraryBuffer, 0, sizeof(clientLibraryBuffer));
    memset(serverLibraryBuffer, 0, sizeof(serverLibraryBuffer));
    twi_rpc_client_init((TWIBuffer) { clientLibraryBuffer, sizeof(clientLibraryBuffer) });
    twi_rpc_server_init((TWIBuffer) { serverLibraryBuffer, sizeof(serverLibraryBuffer) });

    init_test_rpc_server();
    memset(&resData, 0, sizeof(resData));
    memset(&result, 0xaa, sizeof(result));
}

void tearDown() {
    TEST_ASSERT_FALSE_MESSAGE(received_normal, "Routine 'normal' has been called unexpectedly");
    TEST_ASSERT_FALSE_MESSAGE(received_void, "Routine 'void' has been called unexpectedly");
    TEST_ASSERT_FALSE_MESSAGE(received_noargs, "Routine 'noargs' has been called unexpectedly");
    TEST_ASSERT_FALSE_MESSAGE(received_notify, "Routine 'notify' has been called unexpectedly");
}

void assert_status() {
    TEST_ASSERT_EQUAL_MESSAGE(TWI_RPC_handler_ok, result.handler_status, "Unexpected handler status");
    TEST_ASSERT_EQUAL_MESSAGE(TWI_RPC_no_error, result.server_status, "Unexpected server status");
    TEST_ASSERT_EQUAL_MESSAGE(TWI_RPC_call_success, result.status, "Unexpected client status");
}

void test_rpc_function() {
    result = twi_rpc(device, OP_RPC_NORMAL, sendBuffer, receiveBuffer);
    assert_status();

    TEST_ASSERT_MESSAGE(received_normal, "Routine 'normal' not called");
    received_normal = FALSE;

    TEST_ASSERT_EQUAL_INT_MESSAGE(46, resData.res0, "res1 unexpected value");
    TEST_ASSERT_EQUAL_FLOAT_MESSAGE(11.3, resData.res1, "res2 unexpected value");
}

//OP_RPC_VOID
//OP_RPC_NOARGS
//OP_RPC_NOTIFY
