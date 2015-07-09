/*
 *  Created on: 15.12.2012
 *      Author: Anton
 */

#include <unity.h>
#include "twi_driver_master.h"
#include <string.h>

// This device is used by the tests
const TWIDevice test_device = { 0x9c };

BOOL twiCalled;
BOOL waitedForCompletion;

TwiError twi_error;

// This device is the one that is passed to functions in this fake module
TWIDevice device;
uint16_t waitForCompletionTime;

BOOL sent, received;
TWIBuffer sendBuffer, receiveBuffer;

TWIBuffer returnedReceiveData;

void fake_twi_driver_master_setUp() {
	twiCalled = FALSE;
	waitedForCompletion = FALSE;
	sent = received = FALSE;
	sendBuffer = receiveBuffer = EmptyBuffer;
	device = (TWIDevice) { 0 };
	returnedReceiveData = EmptyBuffer;
    twi_error = TWI_No_Error;
}

void assertNotCalledYet(BOOL *flag) {
	TEST_ASSERT_FALSE_MESSAGE(*flag, "Faked TWI utilized multiple times!");
	*flag = TRUE;
}

void twiSend(TWIDevice targetDevice, TWIBuffer data) {
	assertNotCalledYet(&twiCalled);
	sent = TRUE;
	sendBuffer = data;
}

void fillReceiveData(TWIBuffer *buf) {
	memcpy(buf->data, returnedReceiveData.data,
			returnedReceiveData.size <= buf->size
			? returnedReceiveData.size
			: buf->size);
	if (buf->size > returnedReceiveData.size) {
		memset(buf->data + returnedReceiveData.size, TwiIllegalByte,
				buf->size - returnedReceiveData.size);
	}
}

void twiReceive(TWIDevice targetDevice, TWIBuffer _receiveBuffer) {
	assertNotCalledYet(&twiCalled);
	received = TRUE;
	receiveBuffer = _receiveBuffer;
	fillReceiveData(&_receiveBuffer);
}

void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer _receiveBuffer) {
	assertNotCalledYet(&twiCalled);
	device = targetDevice;
	received = TRUE;
	receiveBuffer = _receiveBuffer;
	sent = TRUE;
	sendBuffer = sendData;
	fillReceiveData(&_receiveBuffer);
}

void twiWaitForCompletion(uint16_t msWaitEachIteration) {
	assertNotCalledYet(&waitedForCompletion);
	waitForCompletionTime = msWaitEachIteration;
}
