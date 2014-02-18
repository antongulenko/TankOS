/*
 * twi_driver_slave.h
 *
 *  Created on: 10.12.2012
 *      Author: Anton
 */

#ifndef twi_driver_SLAVE_H_
#define twi_driver_SLAVE_H_

#include "twi_driver_master.h"

// This init function takes 3 callback functions (see comments).
// This is the only function in the TWI slave API.
void twi_init_slave_callbacks(
	// Called when the Master requests data by setting us in Slave Transmitter mode.
	// The returned buffer will be sent to the Master.
	TWIBuffer (*twi_handleMasterRequest)(),

	// Called when the Master starts sending data by setting us in Slave Receiver mode.
	// The returned buffer will be filled with the received data.
	TWIBuffer (*twi_masterTransmissionStarting)(),

	// Called when we are finished receiving data from the Master.
	// The buffer-parameter is the buffer previously returned from twi_masterTransmissionStarting,
	// but with the size field set to the number of bytes that were actually received.
	void (*twi_masterTransmissionEnded)(TWIBuffer twi_buffer)
);

// This function will handle the TWI interrupt for a device in slave mode.
TwiHandlerStatus twi_handle_slave(TwiStatus status);
void twi_init_slave();

#endif /* twi_driver_SLAVE_H_ */
