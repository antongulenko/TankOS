/*
 *  Created on: 15.12.2012
 *      Author: Anton
 */

#include <unity.h>
#include "twi_driver_slave.h"

TWIBuffer (*twi_handleMasterRequest)();
TWIBuffer (*twi_masterTransmissionStarting)();
void (*twi_masterTransmissionEnded)(TWIBuffer twi_buffer);

void twi_init_slave_callbacks(
	TWIBuffer (*_twi_handleMasterRequest)(),
	TWIBuffer (*_twi_masterTransmissionStarting)(),
	void (*_twi_masterTransmissionEnded)(TWIBuffer twi_buffer))
{
	twi_handleMasterRequest = _twi_handleMasterRequest;
	twi_masterTransmissionStarting = _twi_masterTransmissionStarting;
	twi_masterTransmissionEnded = _twi_masterTransmissionEnded;
}
