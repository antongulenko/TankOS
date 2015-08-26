/*
 *  Created on: 15.12.2012
 *      Author: Anton
 */

#ifndef F_AKE_TWI_DRIVER_MASTER_H_
#define F_AKE_TWI_DRIVER_MASTER_H_

#include <platform/twi/master.h>

void fake_twi_driver_master_setUp();

extern struct _s_mock_driver {
    BOOL twiCalled;
    BOOL waitedForCompletion;

    TWIDevice device;

    BOOL sent, received;
    TWIBuffer sendBuffer, receiveBuffer;

    // The content of this buffer will be copied into the receive buffer(s)
    // that are passed into this fake module.
    TWIBuffer returnedReceiveData;
} mock_driver;

// This is not really related to twi_driver, but is used by all tests
// that use this module.
const TWIDevice test_device;

extern TwiError twi_error;

#endif /* F_AKE_TWI_DRIVER_MASTER_H_ */
