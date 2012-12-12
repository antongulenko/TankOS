/*
 * twi_driver_slave_handler.h
 *
 *  Created on: 10.12.2012
 *      Author: Anton
 */

#ifndef twi_driver_SLAVE_HANDLER_H_
#define twi_driver_SLAVE_HANDLER_H_

TWIBuffer twi_handleMasterRequest();

void twi_handleMasterTransmission(TWIBuffer twi_buffer);

#endif /* twi_driver_SLAVE_HANDLER_H_ */
