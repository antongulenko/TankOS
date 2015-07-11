/*
 *  Created on: 14.12.2012
 *      Author: Anton
 */

#include <mocks/twi_driver_slave.h>
#include <kernel/twi/rpc/server.h>
#include <kernel/twi/rpc/server_handler.h>
#include <stdio.h>
#include <unity.h>
#include <string.h>

const byte expectedOperation = 0x2e;
const RpcHandlerStatus handlerStatus = TWI_RPC_handler_ok;
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

byte expectedResultData[sizeof(resultData) + 3];
TWIBuffer expectedResult = { expectedResultData, sizeof(expectedResultData) };

void assert_buffer(TWIBuffer buffer, byte* expectedData, int expectedSize, char *bufferName) {
    char msg1[100];
    char msg2[100];
    sprintf(msg1, "buffer '%s' did not have correct size", bufferName);
    sprintf(msg2, "buffer '%s' did not contain correct data", bufferName);
    TEST_ASSERT_EQUAL_INT_MESSAGE(expectedSize, buffer.size, msg1);
    TEST_ASSERT_EQUAL_INT8_ARRAY_MESSAGE(expectedData, buffer.data, expectedSize, msg2);
}

BOOL respond_big_data = FALSE;

RpcHandlerStatus twi_handleRpcRequest(byte operation, TWIBuffer *in_out_buffer) {
	TEST_ASSERT_EQUAL_INT_MESSAGE(expectedOperation, operation,
            "Unexpected operation byte received by rpc server");
    int size;
    if (respond_big_data) {
        size = in_out_buffer->size;
    } else {
        assert_buffer(*in_out_buffer, (byte*) &parameterData, sizeof(parameterData), "rpc server parameter data");
        size = sizeof(resultData);
        memcpy(in_out_buffer->data, &resultData, sizeof(resultData));
    }
    in_out_buffer->size = size;
    return handlerStatus;
}

byte server_io_data[100];

void setUp() {
    fake_twi_driver_slave_setUp();
    TWIBuffer server_io_buffer = (TWIBuffer) { server_io_data, sizeof(server_io_data) };
    memset(server_io_data, 0, sizeof(server_io_data));
    twi_rpc_server_init(server_io_buffer);

    memcpy(expectedResultData + 2, &resultData, sizeof(resultData));
    expectedResultData[0] = TWI_RPC_invalid;
    expectedResultData[1] = handlerStatus;
    expectedResultData[sizeof(expectedResultData) - 1] = expectedOperation;
    sendBuffer = EmptyBuffer;
    respond_big_data = FALSE;
}

void tearDown() {
    assert_buffer(sendBuffer, (byte*) &expectedResultData, expectedResult.size, "rpc server result data");
}

TWIBuffer initiate_transmission() {
    TWIBuffer receiveBuffer = twi_masterTransmissionStarting();
    receiveBuffer.data[0] = expectedOperation;
    memcpy(receiveBuffer.data + 1, &parameterData, sizeof(parameterData));
    receiveBuffer.size = sizeof(parameterData) + 1;
    return receiveBuffer;
}

void expect_error(byte err_code) {
    expectedResultData[0] = err_code;
    expectedResultData[1] = TWI_RPC_handler_unknown;
    expectedResultData[2] = ILLEGAL_OPERATION;
    expectedResult.size = 3;
}

void test_full_request() {
    expectedResultData[0] = TWI_RPC_no_error;
    TWIBuffer receiveBuffer = initiate_transmission();
    twi_masterTransmissionEnded(receiveBuffer);
    sendBuffer = twi_handleMasterRequest();
}

void test_double_start() {
    expect_error(TWI_RPC_error_double_start);
    initiate_transmission();
    // Initialize second transmission without finishing the first one
    TWIBuffer receiveBuffer = initiate_transmission();
    twi_masterTransmissionEnded(receiveBuffer);
    sendBuffer = twi_handleMasterRequest();
}

void test_end_without_start() {
    expect_error(TWI_RPC_error_standalone_end);
    byte buf[2];
    TWIBuffer receiveBuffer = { buf, sizeof(buf) };
    // End transmission without having initiated it. Simulated driver error.
    twi_masterTransmissionEnded(receiveBuffer);
    sendBuffer = twi_handleMasterRequest();
}

void test_buffer_too_small_receiving() {
    respond_big_data = TRUE;
    expect_error(TWI_RPC_error_buffer_too_small);

    TWIBuffer receiveBuffer = initiate_transmission();
    receiveBuffer.size = sizeof(server_io_data);
    memset(receiveBuffer.data + 1, 0x9a, receiveBuffer.size - 1); // Fill with random stuff
    twi_error = TWI_Slave_TooMuchDataReceived;

    twi_masterTransmissionEnded(receiveBuffer);
    sendBuffer = twi_handleMasterRequest();
}

void test_buffer_too_small_sending() {
    respond_big_data = TRUE;
    expect_error(TWI_RPC_error_buffer_too_small);
    expectedResultData[1] = handlerStatus;
    expectedResultData[2] = expectedOperation;

    TWIBuffer receiveBuffer = initiate_transmission();
    receiveBuffer.size = sizeof(server_io_data) - 1;
    memset(receiveBuffer.data + 1, 0x9a, receiveBuffer.size - 1); // Fill with random stuff

    twi_masterTransmissionEnded(receiveBuffer);
    sendBuffer = twi_handleMasterRequest();
}
