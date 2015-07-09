/*
 *  Created on: 15.12.2012
 *      Author: Anton
 */

#ifndef F_AKE_TWI_DRIVER_MASTER_H_
#define F_AKE_TWI_DRIVER_MASTER_H_

#include <kernel/twi/driver/master.h>

void fake_twi_driver_master_setUp();

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

extern TwiError twi_error;

#endif /* F_AKE_TWI_DRIVER_MASTER_H_ */
