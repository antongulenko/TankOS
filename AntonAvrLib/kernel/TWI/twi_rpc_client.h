#ifndef TWI_RPC_H_
#define TWI_RPC_H_

#include "twi_driver.h"

// The contents of the parameters-buffer will be copied into a dedicated buffer
// before sending the data. This way, the data can (and should) passed into here 
// from the stack. The resultBuffer must be allocated on the heap.
void twi_rpc(TWIDevice device, byte operation, TWIBuffer parameters, TWIBuffer resultBuffer);
void twi_rpc_oneway(TWIDevice device, byte operation, TWIBuffer parameters);

// Acts like a normal oneway operation, but after sending the parameters,
// an additional START and immediate STOP is transmitted,
// like an 'empty' argument reception.
void twi_rpc_pseudo_oneway(TWIDevice device, byte operation, TWIBuffer parameters);

// parameterBuffer is the buffer mentioned in the comment above twi_rpc.
// It must be big enough to fit all parameters passed to functions in this module,
// plus one byte to identify the operation.
void twi_rpc_client_init(TWIBuffer parameterBuffer);

#endif
