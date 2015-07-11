
#include <mocks/twi_driver_slave.h>
#include <kernel/twi/rpc/server.h>
#include <kernel/twi/rpc/client.h>
#include <kernel/twi/rpc/server_handler.h>
#include <mocks/rpc_client.h>
#include <string.h>
#include <unity.h>

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

RpcHandlerStatus twi_handleRpcRequest(byte operation, TWIBuffer *in_out_buffer) {
    if (operation != OP_RPC_NORMAL) {
        in_out_buffer->size = 0;
        return TWI_RPC_handler_illegal_operation;
    }
    if (in_out_buffer->size != sizeof(TestArgStruct)) {
        in_out_buffer->size = 0;
        return TWI_RPC_handler_illegal_parameters;
    }
    TestArgStruct *args = (TestArgStruct*) in_out_buffer->data;

    // The actual RPC handling routine
    if (args->arg1 == (int) args->arg2) {
        in_out_buffer->size = 0;
        return TWI_RPC_handler_error + 20;
    }
    TestResStruct res;
    res.res0 = args->arg1 + 1;
    res.res1 = args->arg2 + 1.0f;
    memcpy(res.res2, "Hi", 3);

    in_out_buffer->size = sizeof(TestResStruct);
    *((TestResStruct*) in_out_buffer->data) = res;
    return TWI_RPC_handler_ok;
}

void assert_client_status(RpcClientStatus status, RpcServerStatus server_status, RpcHandlerStatus handler_status) {
    TEST_ASSERT_EQUAL_INT_MESSAGE(handler_status, test_rpc_status.handler_status, "Wrong handler status");
    TEST_ASSERT_EQUAL_INT_MESSAGE(server_status, test_rpc_status.server_status, "Wrong server status");
    TEST_ASSERT_EQUAL_INT_MESSAGE(status, test_rpc_status.status, "Wrong client status");
}

void test_success() {
    TestResStruct res = rpcNormal((TestArgStruct) { 22, 56.5 });

    assert_client_status(TWI_RPC_call_success, TWI_RPC_no_error, TWI_RPC_handler_ok);
    TEST_ASSERT_EQUAL_INT_MESSAGE(23, res.res0, "Wrong first result");
    TEST_ASSERT_EQUAL_FLOAT_MESSAGE(57.5, res.res1, "Wrong second result");
    TEST_ASSERT_EQUAL_STRING_MESSAGE("Hi", res.res2, "Wrong third result");
}

void test_wrong_parameters() {
    TestResStruct res = rpcNormal_wrongParameters(11);
    assert_client_status(TWI_RPC_call_error_server, TWI_RPC_error_handler, TWI_RPC_handler_illegal_parameters);
}

void test_wrong_operation() {
    TestResStruct res = rpcNormal_wrongOperation((TestArgStruct) { 22, 56.5 });
    assert_client_status(TWI_RPC_call_error_server, TWI_RPC_error_handler, TWI_RPC_handler_illegal_operation);
}

void test_handler_error() {
    TestResStruct res = rpcNormal((TestArgStruct) { 33, 33.0 });
    assert_client_status(TWI_RPC_call_error_server, TWI_RPC_error_handler, TWI_RPC_handler_error + 20);
}

void test_handler_status_string() {
    TEST_ASSERT_EQUAL_STRING("RPC handler ok", RpcHandlerStatus_string(TWI_RPC_handler_ok));
    TEST_ASSERT_EQUAL_STRING("RPC handler illegal parameters", RpcHandlerStatus_string(TWI_RPC_handler_illegal_parameters));
    TEST_ASSERT_EQUAL_STRING("RPC handler illegal operation", RpcHandlerStatus_string(TWI_RPC_handler_illegal_operation));
    TEST_ASSERT_EQUAL_STRING("RPC handler status unknown", RpcHandlerStatus_string(TWI_RPC_handler_unknown));
    TEST_ASSERT_EQUAL_STRING("RPC handler error 44", RpcHandlerStatus_string(TWI_RPC_handler_error + 44));
}
