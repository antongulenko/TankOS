
#include <mocks/twi_driver_slave.h>
#include <twi/rpc/server.h>
#include <twi/rpc/client.h>
#include <twi/rpc/server_handler.h>
#include <mocks/rpc_client.h>
#include <string.h>
#include <unity.h>
#include <mocks/assertions.h>

byte clientLibraryBuffer[100];
byte serverLibraryBuffer[100];

RpcClientResult status;

void setUp() {
    memset(clientLibraryBuffer, 0, sizeof(clientLibraryBuffer));
    memset(serverLibraryBuffer, 0, sizeof(serverLibraryBuffer));
    twi_rpc_client_init((TWIBuffer) { clientLibraryBuffer, sizeof(clientLibraryBuffer) });
    twi_rpc_server_init((TWIBuffer) { serverLibraryBuffer, sizeof(serverLibraryBuffer) });
    memset(&status, 0, sizeof(status));
}

void tearDown() {
}

void assert_client_status(RpcClientStatus _status, RpcServerStatus server_status, RpcHandlerStatus handler_status) {
    assert_status((RpcClientResult) { _status, handler_status, server_status }, status);
}

void test_success() {
    TestResStruct res;
    status = rpcNormal(test_device, (TestArgStruct) { 22, 56.5 }, &res);

    assert_client_status(TWI_RPC_call_success, TWI_RPC_no_error, TWI_RPC_handler_ok);
    TEST_ASSERT_EQUAL_INT_MESSAGE(23, res.res0, "Wrong first result");
    TEST_ASSERT_EQUAL_FLOAT_MESSAGE(59.5f, res.res1, "Wrong second result");
    TEST_ASSERT_EQUAL_STRING("Ho", res.res2);
}

void test_wrong_parameters() {
    status = rpcNormal_wrongParameters(test_device, 11);
    assert_client_status(TWI_RPC_call_error_server, TWI_RPC_error_handler, TWI_RPC_handler_illegal_parameters);
}

void test_wrong_operation() {
    status = rpcNormal_wrongOperation(test_device, (TestArgStruct) { 22, 56.5 });
    assert_client_status(TWI_RPC_call_error_server, TWI_RPC_error_handler, TWI_RPC_handler_illegal_operation);
}

void test_handler_error() {
    status = rpcPVoid_handlerError(test_device, (TestArgStruct) { 33, 33.0 });
    assert_client_status(TWI_RPC_call_error_server, TWI_RPC_error_handler, TWI_RPC_handler_error + 20);
}
