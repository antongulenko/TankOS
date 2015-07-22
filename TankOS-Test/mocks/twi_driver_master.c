/*
 *  Created on: 15.12.2012
 *      Author: Anton
 */

#include <unity.h>
#include "twi_driver_master.h"
#include <string.h>

struct _s_mock_driver mock_driver = {
    FALSE, // twiCalled
    FALSE, // waitedForCompletion
    { 0 }, // device
    FALSE, // sent
    FALSE, // received
    StaticEmptyBuffer, // sendBuffer
    StaticEmptyBuffer, // receiveBuffer
    StaticEmptyBuffer // returnedReceiveData
};

// This device is used by the tests
const TWIDevice test_device = { 0x9c };

TwiError twi_error;

void fake_twi_driver_master_setUp() {
	mock_driver.twiCalled = FALSE;
	mock_driver.waitedForCompletion = FALSE;
	mock_driver.sent = mock_driver.received = FALSE;
	mock_driver.sendBuffer = mock_driver.receiveBuffer = EmptyBuffer;
	mock_driver.device = (TWIDevice) { 0 };
	mock_driver.returnedReceiveData = EmptyBuffer;
    twi_error = TWI_No_Error;
}

void assertNotCalledYet(BOOL *flag) {
	TEST_ASSERT_FALSE_MESSAGE(*flag, "Faked TWI utilized multiple times!");
	*flag = TRUE;
}

void twiSend(TWIDevice targetDevice, TWIBuffer data) {
	assertNotCalledYet(&mock_driver.twiCalled);
	mock_driver.sent = TRUE;
	mock_driver.sendBuffer = data;
}

void fillReceiveData(TWIBuffer *buf) {
	memcpy(buf->data, mock_driver.returnedReceiveData.data,
			mock_driver.returnedReceiveData.size <= buf->size
			? mock_driver.returnedReceiveData.size
			: buf->size);
	if (buf->size > mock_driver.returnedReceiveData.size) {
		memset(buf->data + mock_driver.returnedReceiveData.size, TwiIllegalByte,
				buf->size - mock_driver.returnedReceiveData.size);
	}
}

void twiReceive(TWIDevice targetDevice, TWIBuffer _receiveBuffer) {
	assertNotCalledYet(&mock_driver.twiCalled);
	mock_driver.received = TRUE;
	mock_driver.receiveBuffer = _receiveBuffer;
	fillReceiveData(&_receiveBuffer);
}

void twiSendReceive(TWIDevice targetDevice, TWIBuffer sendData, TWIBuffer _receiveBuffer) {
	assertNotCalledYet(&mock_driver.twiCalled);
	mock_driver.device = targetDevice;
	mock_driver.received = TRUE;
	mock_driver.receiveBuffer = _receiveBuffer;
	mock_driver.sent = TRUE;
	mock_driver.sendBuffer = sendData;
	fillReceiveData(&_receiveBuffer);
}

void twiWaitForCompletion() {
	assertNotCalledYet(&mock_driver.waitedForCompletion);
}
