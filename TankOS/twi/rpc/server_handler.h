/*
 *  Created on: 14.12.2012
 *      Author: Anton
 */

#ifndef TWI_RPC_SERVER_HANDLER_H_
#define TWI_RPC_SERVER_HANDLER_H_

#include <platform/twi/driver.h>

typedef enum {
    TWI_RPC_handler_ok = 0,
    TWI_RPC_handler_illegal_operation = 1,
    TWI_RPC_handler_illegal_parameters = 2,
    TWI_RPC_handler_error = 3, // and higher
    TWI_RPC_handler_unknown = 255
} RpcHandlerStatus;

#define ILLEGAL_OPERATION 255

// This function is invoked to handle rpc calls coming in from a client/master.
// the in_out_buffer contains the parameter data, and must contain the result
// data after this call returns (including the size of the result data).
RpcHandlerStatus twi_handleRpcRequest(byte operation, TWIBuffer *in_out_buffer);

#endif /* TWI_RPC_SERVER_HANDLER_H_ */
