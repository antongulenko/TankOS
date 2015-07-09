/*
 *  Created on: 14.12.2012
 *      Author: Anton
 */

#include <mocks/twi_driver_slave.h>
#include <kernel/twi/rpc/server.h>
#include <stdio.h>
#include <unity.h>
#include <string.h>

byte expectedOperation;
TWIBuffer sendBuffer;

struct _s_parameterData {
    int param1;
    char param2[3];
} parameterData = { 22, { 'a', 'x', 'y' } };

struct _s_resultData {
    float res1[2];
    int res2;
    char res3;
} resultData = { { 2.11, 4.55 }, 43, 'p' };

byte expectedResultData[sizeof(resultData) + 2];

void assert_buffer(TWIBuffer buffer, byte* expectedData, int expectedSize, char *bufferName) {
    char msg1[100];
    char msg2[100];
    sprintf(msg1, "buffer '%s' did not have correct size", bufferName);
    sprintf(msg2, "buffer '%s' did not contain correct data", bufferName);
    TEST_ASSERT_EQUAL_INT_MESSAGE(expectedSize, buffer.size, msg1);
    TEST_ASSERT_EQUAL_MEMORY_MESSAGE(expectedData, buffer.data, expectedSize, msg2);
}

void twi_handleRpcRequest(byte operation, TWIBuffer *in_out_buffer) {
	TEST_ASSERT_EQUAL_INT_MESSAGE(expectedOperation, operation,
            "Unexpected operation byte received by rpc server");
    assert_buffer(*in_out_buffer, (byte*) &parameterData, sizeof(parameterData), "rpc server parameter data");

    memcpy(in_out_buffer->data, &resultData, sizeof(resultData));
    in_out_buffer->size = sizeof(resultData);
}

byte server_io_data[100];

void setUp() {
    fake_twi_driver_slave_setUp();
    TWIBuffer server_io_buffer = (TWIBuffer) { server_io_data, sizeof(server_io_data) };
    twi_rpc_server_init(server_io_buffer);
    expectedOperation = 0;
    memcpy(expectedResultData + 2, &resultData, sizeof(resultData));
    expectedResultData[0] = 0;
    expectedResultData[1] = 0;
    sendBuffer = EmptyBuffer;
}

void tearDown() {
    expectedResultData[1] = expectedOperation;

    assert_buffer(sendBuffer, (byte*) &expectedResultData, sizeof(expectedResultData), "rpc server result data");
}

void test_full_request() {
    expectedOperation = 101;
    expectedResultData[0] = TWI_RPC_no_error;

    TWIBuffer receiveBuffer = twi_masterTransmissionStarting();
    receiveBuffer.data[0] = expectedOperation;
    memcpy(receiveBuffer.data + 1, &parameterData, sizeof(parameterData));
    receiveBuffer.size = sizeof(parameterData) + 1;

    twi_masterTransmissionEnded(receiveBuffer);
    sendBuffer = twi_handleMasterRequest();
}

void test_full_request_error() {
    expectedOperation = 102;
    expectedResultData[0] = TWI_RPC_no_error;

    TWIBuffer receiveBuffer = twi_masterTransmissionStarting();
    receiveBuffer.data[0] = expectedOperation;
    memcpy(receiveBuffer.data + 1, &parameterData, sizeof(parameterData));
    receiveBuffer.size = sizeof(parameterData) + 1;

    twi_masterTransmissionEnded(receiveBuffer);
    sendBuffer = twi_handleMasterRequest();
}
