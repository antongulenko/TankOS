/*
 * twi_driver_slave_handler.h
 *
 *  Created on: 10.12.2012
 *      Author: Anton
 */

#ifndef twi_driver_SLAVE_HANDLER_H_
#define twi_driver_SLAVE_HANDLER_H_

// Called when the Master requests data by setting us in Slave Transmitter mode.
// The returned buffer will be sent to the Master.
TWIBuffer twi_handleMasterRequest();

// Called when the Master starts sending data by setting us in Slave Receiver mode.
// The returned buffer will be filled with the received data.
TWIBuffer twi_masterTransmissionStarting();

// Called when we are finished receiving data from the Master.
// The buffer-parameter is the buffer previously returned from twi_masterTransmissionStarting,
// but with the size field set to the number of bytes that were actually received.
void twi_masterTransmissionEnded(TWIBuffer twi_buffer);

#endif /* twi_driver_SLAVE_HANDLER_H_ */
