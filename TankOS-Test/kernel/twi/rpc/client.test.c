/*
 *  Created on: 14.12.2012
 *      Author: Anton
 */

#include <mocks/twi_driver_master.h>
#include <kernel/twi/rpc/client.h>
#include <kernel/twi/driver/driver.h>
#include <string.h>
#include <unity.h>

byte clientData[10];

byte parameterData[] = { 9, 1, 0xdd, 0xac };
const TWIBuffer parameterBuffer = { parameterData, sizeof(parameterData) };

const byte operation = 0xab;
RpcClientStatus status;
RpcClientStatus expectedStatus;

byte expectedReceiveData[] = { 0xaa, 0xbb, 0x92 };

void setUp() {
	fake_twi_driver_master_setUp();
	memset(clientData, 0, sizeof(clientData));
	twi_rpc_client_init((TWIBuffer) { clientData, sizeof(clientData) });
    expectedStatus = TWI_RPC_success;
    status = TWI_RPC_unknown_error;
}

void tearDown() {
    TEST_ASSERT_EQUAL_INT_MESSAGE(expectedStatus, status, "Unexpected rpc client result status");
	TEST_ASSERT_FALSE_MESSAGE(waitedForCompletion, "Should not have waited for completion");
}

void assertParametersInBuffer(TWIBuffer buf) {
	TEST_ASSERT_EQUAL_INT_MESSAGE(sizeof(parameterData) + 1, buf.size,
			"Parameter send buffer has wrong size");
	TEST_ASSERT_EQUAL_UINT8_MESSAGE(operation, buf.data[0],
			"Operation byte not correctly set");
	TEST_ASSERT_EQUAL_UINT8_ARRAY_MESSAGE(parameterData, buf.data + 1, sizeof(parameterData),
			"Parameter data is not correct");
}

void assertResultInBuffer(TWIBuffer buf) {
	TEST_ASSERT_EQUAL_INT_MESSAGE(sizeof(expectedReceiveData), buf.size,
				"Buffer with received data has wrong size");
	TEST_ASSERT_EQUAL_UINT8_ARRAY_MESSAGE(expectedReceiveData, buf.data, sizeof(expectedReceiveData),
				"Received data is not correct");
}

void test_rpc_send() {
	// Prepare a buffer to receive the rpc call results.
	byte resultBufferData[10];
	memset(resultBufferData, 0, sizeof(resultBufferData));
	TWIBuffer resultBuffer = (TWIBuffer) { resultBufferData, sizeof(expectedReceiveData) };

	// Instruct the fake_twi_driver to return some well-known data.
	returnedReceiveData.size = sizeof(expectedReceiveData);
	returnedReceiveData.data = expectedReceiveData;

	status = twi_rpc(test_device, operation, parameterBuffer, resultBuffer);
	TEST_ASSERT_MESSAGE(sent, "twi_rpc call has not sent anything");
	TEST_ASSERT_MESSAGE(received, "twi_rpc call has not received anything");
	assertParametersInBuffer(sendBuffer);

	// Our own resultBuffer should be the same as the receiveBuffer passed from
	// twi_rpc_client into the fake_twi_driver.
	assertResultInBuffer(resultBuffer);
	assertResultInBuffer(receiveBuffer);
}

void test_rpc_oneway() {
	status = twi_rpc_oneway(test_device, operation, parameterBuffer);
	assertParametersInBuffer(sendBuffer);
	TEST_ASSERT_MESSAGE(sent, "twi_rpc_oneway call has not sent anything");
	TEST_ASSERT_FALSE_MESSAGE(received, "twi_rpc_oneway call has received something");
}

void test_rpc_pseudo_oneway() {
	status = twi_rpc_pseudo_oneway(test_device, operation, parameterBuffer);
	assertParametersInBuffer(sendBuffer);
	TEST_ASSERT_MESSAGE(sent, "twi_rpc_pseudo_oneway call has not sent anything");
	TEST_ASSERT_MESSAGE(received, "twi_rpc_pseudo_oneway call has not received anything");

	TEST_ASSERT_EQUAL_MESSAGE(0, receiveBuffer.size,
			"RPC pseudo oneway should receive empty data");
	TEST_ASSERT_EQUAL_MESSAGE(0, receiveBuffer.data,
			"RPC pseudo oneway call passed a valid buffer pointer");
}

void test_send_buffer_too_small() {
    expectedStatus = TWI_RPC_send_buffer_too_small;
    byte big_data[sizeof(clientData)] = { 1 };
    TWIBuffer big_buffer = (TWIBuffer) { big_data, sizeof(big_data) };
    TWIBuffer resultBuffer = (TWIBuffer) { big_data, sizeof(expectedReceiveData) };
    status = twi_rpc(test_device, operation, big_buffer, resultBuffer);

    TEST_ASSERT_FALSE_MESSAGE(sent, "twi rpc should not have sent anything");
	TEST_ASSERT_FALSE_MESSAGE(received, "twi rpc call should not have received anything");
}

void test_send_buffer_too_small_oneway() {
    expectedStatus = TWI_RPC_send_buffer_too_small;
    byte big_data[sizeof(clientData)] = { 1 };
    TWIBuffer big_buffer = (TWIBuffer) { big_data, sizeof(big_data) };
    status = twi_rpc_oneway(test_device, operation, big_buffer);

    TEST_ASSERT_FALSE_MESSAGE(sent, "twi rpc should not have sent anything");
	TEST_ASSERT_FALSE_MESSAGE(received, "twi rpc call should not have received anything");
}

void test_send_buffer_too_small_pseudo_oneway() {
    expectedStatus = TWI_RPC_send_buffer_too_small;
    byte big_data[sizeof(clientData)] = { 1 };
    TWIBuffer big_buffer = (TWIBuffer) { big_data, sizeof(big_data) };
    status = twi_rpc_pseudo_oneway(test_device, operation, big_buffer);

    TEST_ASSERT_FALSE_MESSAGE(sent, "twi rpc should not have sent anything");
	TEST_ASSERT_FALSE_MESSAGE(received, "twi rpc call should not have received anything");
}

void test_send_buffer_twi_error() {
    expectedStatus = TWI_RPC_driver_error;
    twi_error = TWI_Bus_Error;
    byte resultBufferData[10];
	TWIBuffer resultBuffer = (TWIBuffer) { resultBufferData, sizeof(expectedReceiveData) };
    status = twi_rpc(test_device, operation, parameterBuffer, resultBuffer);
}

void test_send_buffer_oneway_twi_error() {
    expectedStatus = TWI_RPC_driver_error;
    twi_error = TWI_Bus_Error;
    status = twi_rpc_oneway(test_device, operation, parameterBuffer);
}

void test_send_buffer_pseudo_oneway_twi_error() {
    expectedStatus = TWI_RPC_driver_error;
    twi_error = TWI_Bus_Error;
    status = twi_rpc_pseudo_oneway(test_device, operation, parameterBuffer);
}
