/*
 *  Created on: 15.12.2012
 *      Author: Anton
 */

#include <mocks/rpc_client.h>
#include <mocks/twi_driver_master.h>
#include <twi/rpc/client_functions.h>
#include <string.h>
#include <unity.h>
#include <mocks/assertions.h>

byte clientLibraryBuffer[100];

TestArgStruct parameters = { 43, 63.429f };
TestResStruct expectedResults = { 22, 4.219f, { 'a', '0', 'x' } };
TestResStruct results;
byte serverResponse[3 + sizeof(expectedResults)];

BOOL expectingParameters, expectingResults, emptyResults;
byte expectedOperation;
RpcHandlerStatus handlerStatus = 31;

RpcClientResult status;

void setUp() {
    // Library initialization
	fake_twi_driver_master_setUp();
    memset(clientLibraryBuffer, 0, sizeof(clientLibraryBuffer));
    twi_rpc_client_init((TWIBuffer) { clientLibraryBuffer, sizeof(clientLibraryBuffer) });

    memset(&results, 0, sizeof(results));
    memset(&status, 0, sizeof(status));
    memcpy(serverResponse + 2, (char*) &expectedResults, sizeof(expectedResults));

	mock_driver.returnedReceiveData.size = sizeof(serverResponse);
	mock_driver.returnedReceiveData.data = (byte*) serverResponse;

	expectingParameters = expectingResults = emptyResults = FALSE;
    expectedOperation = 0;
}

void tearDown() {
	TEST_ASSERT_EQUAL_MESSAGE(TRUE, mock_driver.sent,
			"rpc call did not behave as expected (sending data)");
	TEST_ASSERT_EQUAL_MESSAGE(expectingResults, mock_driver.received,
			"rpc call did not behave as expected (receiving data)");
    TEST_ASSERT_TRUE_MESSAGE(mock_driver.waitedForCompletion,
            "rpc call did not wait for completion");
    TEST_ASSERT_TRUE_MESSAGE(mock_driver.twiCalled, "twi not called during rpc");

    // Check data that is sent by the client
    int datasize;
    byte* data;
    if (expectingParameters) {
        datasize = sizeof(parameters);
        data = (byte*) &parameters;
    } else {
        datasize = 0;
    }

    TEST_ASSERT_EQUAL_UINT16_MESSAGE(datasize + 1, mock_driver.sendBuffer.size,
         "rpc client did not send data of correct size");
    TEST_ASSERT_EQUAL_INT8_MESSAGE(expectedOperation, mock_driver.sendBuffer.data[0],
                                   "rpc client did send correct operation byte");
    if (expectingParameters) {
        TEST_ASSERT_EQUAL_UINT8_ARRAY_MESSAGE(data, mock_driver.sendBuffer.data + 1, datasize,
                                   "rpc client did not send correct data");
    }

    // Check results of rpc call
    RpcClientResult expectedStatus;
    if (expectingResults) {
        expectedStatus.server_status = TWI_RPC_no_error;
        expectedStatus.status = TWI_RPC_call_success;
        expectedStatus.handler_status = handlerStatus;
        if (emptyResults) {
            TEST_ASSERT_EQUAL_MESSAGE(3, mock_driver.receiveBuffer.size,
                "Wrong size of data was received from server.");
        } else {
            TEST_ASSERT_EQUAL_INT8_ARRAY_MESSAGE(&expectedResults, &results, sizeof(results),
                "Unexpected results data");
        }
    } else {
        expectedStatus.server_status = TWI_RPC_unknown;
        expectedStatus.status = TWI_RPC_call_success_oneway;
        expectedStatus.handler_status = TWI_RPC_handler_unknown;
        TEST_ASSERT_EQUAL_MESSAGE(0, mock_driver.receiveBuffer.size,
            "Data was received unexpectedly.");
    }
    assert_status(expectedStatus, status);
}

void expect_operation(byte operation) {
    expectedOperation = operation;
    serverResponse[0] = TWI_RPC_no_error;
    serverResponse[1] = handlerStatus;
    serverResponse[sizeof(serverResponse) - 1] = operation;
}

void expect_void_operation(byte operation) {
    expectedOperation = operation;
    serverResponse[0] = TWI_RPC_no_error;
    serverResponse[1] = handlerStatus;
    serverResponse[2] = operation;
}

void test_rpcVar() {
    expectingParameters = expectingResults = TRUE;
    expect_operation(OP_RPC_VAR);
    status = rpcVar(test_device, &parameters, sizeof(parameters), &results, sizeof(results));
}

void test_rpcVarArgs() {
    expectingParameters = expectingResults = TRUE;
    expect_operation(OP_RPC_VARARGS);
    status = rpcVarArgs(test_device, &parameters, sizeof(parameters), &results);
}

void test_rpcVarRes() {
    expectingParameters = expectingResults = TRUE;
    expect_operation(OP_RPC_VARRES);
    status = rpcVarRes(test_device, parameters, &results, sizeof(results));
}

void test_rpcNormal() {
    expectingParameters = expectingResults = TRUE;
    expect_operation(OP_RPC_NORMAL);
    status = rpcNormal(test_device, parameters, &results);
}

void test_rpcVoidVar() {
    expectingParameters = TRUE;
    expectingResults = TRUE;
    emptyResults = TRUE;
    expect_void_operation(OP_RPC_VOID_VAR);
    status = rpcVoidVar(test_device, &parameters, sizeof(parameters));
}

void test_rpcVoid() {
    expectingParameters = TRUE;
    expectingResults = TRUE;
    emptyResults = TRUE;
    expect_void_operation(OP_RPC_VOID);
    status = rpcVoid(test_device, parameters);
}

void test_rpcAsync() {
    expectingParameters = TRUE;
    expectingResults = FALSE;
    expect_operation(OP_RPC_ASYNC);
    status = rpcAsync(test_device, parameters);
}

void test_rpcAsyncVar() {
    expectingParameters = TRUE;
    expectingResults = FALSE;
    expect_operation(OP_RPC_ASYNC_VAR);
    status = rpcAsyncVar(test_device, &parameters, sizeof(parameters));
}

void test_rpcNoargs() {
    expectingParameters = FALSE;
    expectingResults = TRUE;
    expect_operation(OP_RPC_NOARGS);
    status = rpcNoargs(test_device, &results);
}

void test_rpcNoargsVar() {
    expectingParameters = FALSE;
    expectingResults = TRUE;
    expect_operation(OP_RPC_NOARGS_VAR);
    status = rpcNoargsVar(test_device, &results, sizeof(results));
}

void test_rpcNotify() {
    expectingParameters = FALSE;
    expectingResults = TRUE;
    emptyResults = TRUE;
    expect_void_operation(OP_RPC_NOTIFY);
    status = rpcNotify(test_device);
}

void test_rpcNotifyAsync() {
    expectingParameters = FALSE;
    expectingResults = FALSE;
    expect_operation(OP_RPC_NOTIFY_ASYNC);
    status = rpcNotifyAsync(test_device);
}
