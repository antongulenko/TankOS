/*
 * twi_driver_helper.c
 *
 *  Created on: 12.12.2012
 *      Author: Anton
 */

#include "twi_driver_helper.h"

#include <unity.h>
#include <string.h>

// Implemented by modules using this module.
TwiHandlerStatus twi_test_handle_interrupt(TwiStatus status);

byte defaultControlFlags;

const byte TwiSlaveAddress = 0xa9;
const byte TwiBitRateValue = 0xdd;
const byte TwiPrescalerMask = 0xcc;

#define TEST_ADDRESS 0xaa
TWIDevice testDevice = { TEST_ADDRESS & ~1 };
const byte receiveAddress = TEST_ADDRESS | 1;
byte sendData[6] = { 5, 6, 7, 0xaa, 0xdd, 0xcc };
TWIBuffer sendBuffer = { sendData, sizeof(sendData) };

byte receiveData[10];
TWIBuffer receiveBuffer = { receiveData, sizeof(receiveData) };

byte expectedReceiveData[] = { 0xdd, 0xaa, 0xca, 4, 9, 1 };
byte expectedByte = 0xaa;

typedef struct ExpectedTwiOp {
	byte status; // Input for twi_handle()
	byte controlRegister; // Expected result of twi_handle()
	byte dataRegister;
	BOOL isWrite; // If FALSE: read operation
} ExpectedTwiOp;

ExpectedTwiOp expectedOps[20];
int numExpectedOps;
int handledExpectedOps;
TwiError expectedError;
BOOL twiHasTerminated;

void twi_tests_setUp() {
	// Reset all TWI registers
	TWCR = TWDR = TWBR = TWSR = TWAR = TWAMR = 0;
	numExpectedOps = handledExpectedOps = 0;
	expectedError = TWI_No_Error;
	twiHasTerminated = FALSE;
	sendBuffer.size = sizeof(sendData);
	memset(receiveData, 0, sizeof(receiveData));
	receiveBuffer.size = sizeof(expectedReceiveData);
}

void expectTwiOp(TwiStatus status, byte controlRegister, byte dataRegister, BOOL isWrite) {
	expectedOps[numExpectedOps].status = status;
	expectedOps[numExpectedOps].controlRegister = defaultControlFlags | controlRegister;
	expectedOps[numExpectedOps].dataRegister = dataRegister;
	expectedOps[numExpectedOps].isWrite = isWrite;
	numExpectedOps++;
}

void expectTwiWriteOp(TwiStatus status, byte controlRegister, byte dataRegister) {
	expectTwiOp(status, controlRegister, dataRegister, TRUE);
}

void expectTwiReadOp(TwiStatus status, byte controlRegister, byte dataRegister) {
	expectTwiOp(status, controlRegister, dataRegister, FALSE);
}

void expectTwiControlOp(TwiStatus status, byte controlRegister) {
	// This means that no operation on the data register is expected
	// Map this to read-operation, since it checks that the data register is not altered.
	expectTwiReadOp(status, controlRegister, 0xff);
}

void assertReceivedData(byte *expectedData, int size) {
	if (size > 0)
		TEST_ASSERT_EQUAL_UINT8_ARRAY_MESSAGE(expectedData, receiveData,
			size, "Received wrong or not enough data!");
	for (; size < sizeof(receiveData); size++)
		TEST_ASSERT_EQUAL_HEX_MESSAGE(0, receiveData[size],
			"Too much data received or receive-buffer corrupted!");
}

void assertReceivedNoData() {
	assertReceivedData(0, 0);
}

void assertReceivedByte(byte expectedByte) {
	assertReceivedData(&expectedByte, 1);
}

void startTwiTest(byte initialControlRegister) {
	TEST_ASSERT_EQUAL_HEX_MESSAGE(initialControlRegister, TWCR, "Wrong initial control register");
	TEST_ASSERT_EQUAL_HEX_MESSAGE(0xFF, TWDR, "Data register changed too early");
	TEST_ASSERT_EQUAL_HEX_MESSAGE(TWI_No_Error, twi_error, "twi_error set before test began!");

	while (handledExpectedOps < numExpectedOps) {
		ExpectedTwiOp operation = expectedOps[handledExpectedOps++];
		if (!operation.isWrite) {
			TWDR = operation.dataRegister;
		}
		TwiHandlerStatus result = twi_test_handle_interrupt(operation.status);
		TEST_ASSERT_EQUAL_HEX_MESSAGE(operation.controlRegister,
					result.controlRegister, "Unexpected Control Register");
		TEST_ASSERT_EQUAL_HEX_MESSAGE(operation.dataRegister, TWDR,
			operation.isWrite
				? "Unexpected Data Register written"
				: "Data Register written during Receive operation");

		if (result.handlerFinished) {
			TEST_ASSERT_EQUAL_HEX_MESSAGE(expectedError, twi_error, "Unexpected error-state");
			TEST_ASSERT_EQUAL_MESSAGE(numExpectedOps, handledExpectedOps, "TWI terminated too early!");
			twiHasTerminated = TRUE;
		} else {
			TEST_ASSERT_MESSAGE(twi_running, "twi_running flag was reset!");
			// twi_error can already be set here, before all interrupts have been handled.
		}
	}
	TEST_ASSERT_MESSAGE(twiHasTerminated, "TWI has not terminated in time!");
}

void startTwiMasterTest() {
	startTwiTest(_BV(TWSTA) | defaultControlFlags);
}

void startTwiSlaveTest() {
	startTwiTest((defaultControlFlags | _BV(TWEA)) & ~_BV(TWINT));
}
