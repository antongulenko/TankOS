/*
 *  Created on: 15.12.2012
 *      Author: Anton
 */

#include <mocks/rpc_client.h>
#include <mocks/twi_driver_master.h>
#include <kernel/twi/rpc/client_functions.h>
#include <string.h>
#include <unity.h>

byte clientData[100];

TestArgStruct parameters = { 43, 63.429f };
TestResStruct expectedResults = { 3.219f, { 'a', '0', 'x' } };
TestResStruct results;

BOOL expectingParameters, expectingResults, emptyResults;
byte expectedOperation;

void setUp() {
	fake_twi_driver_master_setUp();
	memset(clientData, 0, sizeof(clientData));
    memset(&results, 0, sizeof(results));
	twi_rpc_client_init((TWIBuffer) { clientData, sizeof(clientData) });

	returnedReceiveData.size = sizeof(TestResStruct);
	returnedReceiveData.data = (byte*) &expectedResults;

	expectingParameters = expectingResults = emptyResults = FALSE;
    expectedOperation = 0;
}

void tearDown() {
	TEST_ASSERT_EQUAL_MESSAGE(TRUE, sent,
			"rpc call did not behave as expected (sending data)");
	TEST_ASSERT_EQUAL_MESSAGE(expectingResults, received,
			"rpc call did not behave as expected (receiving data)");
    TEST_ASSERT_TRUE_MESSAGE(waitedForCompletion,
            "rpc call did not wait for completion");
    TEST_ASSERT_EQUAL_MESSAGE(0, waitForCompletionTime,
            "rpc did not execute busy loop waiting for completion");
    TEST_ASSERT_TRUE_MESSAGE(twiCalled, "twi not called during rpc");

    // Check data that is sent by the client
    int datasize;
    byte* data;
    if (expectingParameters) {
        datasize = sizeof(parameters);
        data = (byte*) &parameters;
    } else {
        datasize = 0;
    }

    TEST_ASSERT_EQUAL_UINT16_MESSAGE(datasize + 1, sendBuffer.size,
         "rpc client did not send data of correct size");
    TEST_ASSERT_EQUAL_INT8_MESSAGE(expectedOperation, sendBuffer.data[0],
                                   "rpc client did send correct operation byte");
    if (expectingParameters) {
        TEST_ASSERT_EQUAL_UINT8_ARRAY_MESSAGE(data, sendBuffer.data + 1, datasize,
                                          "rpc client did not send correct data");
    }

    // Check results of rpc call
    if (expectingResults && !emptyResults) {
        TEST_ASSERT_EQUAL_MESSAGE(expectedResults.res1, results.res1,
                "Unexpected value in results.res1");
        TEST_ASSERT_EQUAL_INT_ARRAY_MESSAGE(&expectedResults.res2, &results.res2, 3,
                "Unexpected values in results.res2");
    } else {
        TEST_ASSERT_EQUAL_MESSAGE(0, receiveBuffer.size,
                "Non-empty data was received unexpectedly.");
    }
}

void test_rpcVar() {
    expectedOperation = OP_RPC_VAR;
    expectingParameters = expectingResults = TRUE;
    rpcVar(&parameters, sizeof(parameters), &results, sizeof(results));
}

void test_rpcVarArgs() {
    expectedOperation = OP_RPC_VARARGS;
    expectingParameters = expectingResults = TRUE;
    results = rpcVarArgs(&parameters, sizeof(parameters));
}

void test_rpcVarRes() {
    expectedOperation = OP_RPC_VARRES;
    expectingParameters = expectingResults = TRUE;
    rpcVarRes(parameters, &results, sizeof(results));
}

void test_rpcNormal() {
    expectedOperation = OP_RPC_NORMAL;
    expectingParameters = expectingResults = TRUE;
    results = rpcNormal(parameters);
}

void test_rpcVoidVar() {
    expectedOperation = OP_RPC_VOID_VAR;
    expectingParameters = TRUE;
    expectingResults = FALSE;
    rpcVoidVar(&parameters, sizeof(parameters));
}

void test_rpcVoid() {
    expectedOperation = OP_RPC_VOID;
    expectingParameters = TRUE;
    expectingResults = FALSE;
    rpcVoid(parameters);
}

void test_rpcPVoid() {
    expectedOperation = OP_RPC_PVOID;
    expectingParameters = TRUE;
    expectingResults = TRUE;
    emptyResults = TRUE;
    rpcPVoid(parameters);
}

void test_rpcPVoidVar() {
    expectedOperation = OP_RPC_PVOID_VAR;
    expectingParameters = TRUE;
    expectingResults = TRUE;
    emptyResults = TRUE;
    rpcPVoidVar(&parameters, sizeof(parameters));
}

void test_rpcNoargs() {
    expectedOperation = OP_RPC_NOARGS;
    expectingParameters = FALSE;
    expectingResults = TRUE;
    results = rpcNoargs();
}

void test_rpcNoargsVar() {
    expectedOperation = OP_RPC_NOARGS_VAR;
    expectingParameters = FALSE;
    expectingResults = TRUE;
    rpcNoargsVar(&results, sizeof(results));
}

void test_rpcNotify() {
    expectedOperation = OP_RPC_NOTIFY;
    expectingParameters = FALSE;
    expectingResults = FALSE;
    rpcNotify();
}

void test_rpcPNotify() {
    expectedOperation = OP_RPC_PNOTIFY;
    expectingParameters = FALSE;
    expectingResults = TRUE;
    emptyResults = TRUE;
    rpcPNotify();
}
