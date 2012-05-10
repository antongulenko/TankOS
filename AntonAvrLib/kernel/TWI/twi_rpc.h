#ifndef TWI_RPC_H_
#define TWI_RPC_H_

#include "twi_raw.h"

// The contents of the parameters-buffer will be copied into a dedicated buffer
// before sending the data. This way, the data can (and should) passed into here 
// from the stack. The resultBuffer must be allocate elsewhere.
void twi_rpc_oneway(TWIDevice device, byte operation, TWIBuffer parameters);
void twi_rpc(TWIDevice device, byte operation, TWIBuffer parameters, TWIBuffer resultBuffer);

// Acts like a normal oneway operation, but after sending the parameters,
// an additional START and immediate STOP is transmitted,
// like an 'empty' argument reception.
void twi_rpc_pseudo_oneway(TWIDevice device, byte operation, TWIBuffer parameters);

#endif