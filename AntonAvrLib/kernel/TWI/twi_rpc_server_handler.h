/*
 * twi_rpc_server_handler.h
 *
 *  Created on: 14.12.2012
 *      Author: Anton
 */

#ifndef TWI_RPC_SERVER_HANDLER_H_
#define TWI_RPC_SERVER_HANDLER_H_

#include "twi_driver.h"

// This function is invoked to handle rpc calls coming in from a client/master.
// the in_out_buffer contains the parameter data, and must contain the result
// data after this call returns (including the size of the result data).
void twi_handleRpcRequest(byte operation, TWIBuffer *in_out_buffer);

#endif /* TWI_RPC_SERVER_HANDLER_H_ */
