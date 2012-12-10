/*
 * twi_raw_slave_handler.h
 *
 *  Created on: 10.12.2012
 *      Author: Anton
 */

#ifndef TWI_RAW_SLAVE_HANDLER_H_
#define TWI_RAW_SLAVE_HANDLER_H_

TWIBuffer twi_handleMasterRequest();

void twi_handleMasterTransmission(TWIBuffer twi_buffer);

#endif /* TWI_RAW_SLAVE_HANDLER_H_ */
