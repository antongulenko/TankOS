#ifndef TWI_RPC_H_
#define TWI_RPC_H_

#include <kernel/twi/driver/master.h>
#include "status.h"

typedef enum {
    TWI_RPC_success,
    TWI_RPC_send_buffer_too_small,
    TWI_RPC_driver_error,
    TWI_RPC_server_errors,
    TWI_RPC_wrong_operation_byte,
    TWI_RPC_unknown_error
} RpcClientStatus;

typedef struct {
    RpcClientStatus status;
    RpcServerStatus server_status;
} RpcClientResult;

// The contents of the parameters-buffer will be copied into a dedicated buffer
// before sending the data. This way, the data can (and should) passed into here
// from the stack. The resultBuffer must be allocated on the heap.
RpcClientStatus twi_rpc(TWIDevice device, byte operation, TWIBuffer parameters, TWIBuffer resultBuffer);

// 'oneway' is like a void-function, data is sent to the client and no results
// are received back (the bus is released after sending the parameters).
RpcClientStatus twi_rpc_oneway(TWIDevice device, byte operation, TWIBuffer parameters);

// Acts like a normal oneway operation, but after sending the parameters,
// an additional START and immediate STOP is transmitted,
// like an 'empty' argument reception.
RpcClientStatus twi_rpc_pseudo_oneway(TWIDevice device, byte operation, TWIBuffer parameters);

// parameterBuffer is the buffer mentioned in the comment above twi_rpc.
// It must be big enough to fit all parameters passed to functions in this module,
// plus one byte to identify the operation.
void twi_rpc_client_init(TWIBuffer parameterBuffer);

#endif
