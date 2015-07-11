/*
 *  Created on: 15.12.2012
 *      Author: Anton
 */

#ifndef F_AKE_TWI_DRIVER_SLAVE_H_
#define F_AKE_TWI_DRIVER_SLAVE_H_

#include <kernel/twi/driver/slave.h>

extern TWIBuffer (*twi_handleMasterRequest)();
extern TWIBuffer (*twi_masterTransmissionStarting)();
extern void (*twi_masterTransmissionEnded)(TWIBuffer twi_buffer);

//extern TwiError twi_error;

void fake_twi_driver_slave_setUp();

#endif /* F_AKE_TWI_DRIVER_SLAVE_H_ */
