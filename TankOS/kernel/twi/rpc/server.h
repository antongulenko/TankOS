/*
 *  Created on: 14.12.2012
 *      Author: Anton
 */

#ifndef TWI_RPC_SERVER_H_
#define TWI_RPC_SERVER_H_

#include <kernel/twi/driver/driver.h>
#include "server_status.h"

typedef enum {
    TWI_RPC_waiting,
    TWI_RPC_handling_request,
    TWI_RPC_waiting_to_respond,
} RpcServerOperation;

extern RpcServerOperation rpc_server_operation;
extern RpcServerStatus rpc_server_status;

// The in_out_buffer will be used to store received parameter data and also
// to store result data to be returned to the client. It should be big enough
// to always handle this.
void twi_rpc_server_init(TWIBuffer in_out_buffer);

#endif /* TWI_RPC_SERVER_H_ */
