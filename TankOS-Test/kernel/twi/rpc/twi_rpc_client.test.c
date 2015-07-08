/*
 * twi_rpc_client.c
 *
 *  Created on: 14.12.2012
 *      Author: Anton
 */

#include "fake_twi_driver_master.h"
#include <kernel/twi/twi_rpc_client.h>
#include <string.h>
#include <unity.h>

byte clientData[10];

byte parameterData[] = { 9, 1, 0xdd, 0xac };
const TWIBuffer parameterBuffer = { parameterData, sizeof(parameterData) };

const byte operation = 0xab;

byte expectedReceiveData[] = { 0xaa, 0xbb, 0x92 };

void setUp() {
	fake_twi_driver_master_setUp();
	memset(clientData, 0, sizeof(clientData));
	twi_rpc_client_init((TWIBuffer) { clientData, sizeof(clientData) });
}

void tearDown() {
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

	twi_rpc(test_device, operation, parameterBuffer, resultBuffer);
	TEST_ASSERT_MESSAGE(sent, "twi_rpc call has not sent anything");
	TEST_ASSERT_MESSAGE(received, "twi_rpc call has not received anything");
	assertParametersInBuffer(sendBuffer);

	// Our own resultBuffer should be the same as the receiveBuffer passed from
	// twi_rpc_client into the fake_twi_driver.
	assertResultInBuffer(resultBuffer);
	assertResultInBuffer(receiveBuffer);
}

void test_rpc_oneway() {
	twi_rpc_oneway(test_device, operation, parameterBuffer);
	assertParametersInBuffer(sendBuffer);
	TEST_ASSERT_MESSAGE(sent, "twi_rpc call has not sent anything");
	TEST_ASSERT_FALSE_MESSAGE(received, "twi_rpc_oneway call has received something");
}

void test_rpc_pseudo_oneway() {
	twi_rpc_pseudo_oneway(test_device, operation, parameterBuffer);
	assertParametersInBuffer(sendBuffer);
	TEST_ASSERT_MESSAGE(sent, "twi_rpc_pseudo_oneway call has not sent anything");
	TEST_ASSERT_MESSAGE(received, "twi_rpc_pseudo_oneway call has not received anything");

	TEST_ASSERT_EQUAL_MESSAGE(receiveBuffer.size, 0,
			"RPC pseudo oneway call wanted to receive data");
	TEST_ASSERT_EQUAL_MESSAGE(receiveBuffer.data, 0,
			"RPC pseudo oneway call passed a valid buffer pointer");
}
