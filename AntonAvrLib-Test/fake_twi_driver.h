/*
 * fake_twi_driver.h
 *
 *  Created on: 15.12.2012
 *      Author: Anton
 */

#ifndef FAKE_TWI_DRIVER_H_
#define FAKE_TWI_DRIVER_H_

#include <kernel/TWI/twi_driver.h>

void fake_twi_driver_setUp();

extern BOOL twiCalled;
extern BOOL waitedForCompletion;

extern TWIDevice device;
extern uint16_t waitForCompletionTime;

extern BOOL sent, received;
extern TWIBuffer sendBuffer, receiveBuffer;

// The content of this buffer will be copied into the receive buffer(s)
// that are passed into this fake module.
extern TWIBuffer returnedReceiveData;

// This is not really related to twi_driver, but is used by all tests
// that use this module.
extern const TWIDevice test_device;

#endif /* FAKE_TWI_DRIVER_H_ */
