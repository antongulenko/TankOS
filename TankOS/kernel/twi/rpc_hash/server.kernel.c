
// This is a kernel-module, because twi_handleRpcRequest is a function used by
// twi_rpc.h (when TWI_Slave is defined) and might be also implemented elsewhere.

#include "server.h"

// The hash-structure used by the uthash implementation
PTwiFunction twiRpcFunctions = NULL;

// buffer contains the arguments and the result afterwards.
void twi_handleRpcRequest(byte operation, TWIBuffer *buffer) {
	PTwiFunction result;
	HASH_FIND_INT(twiRpcFunctions, &operation, result);
	if (result)
	result->associatedFunction(buffer);
	else
	// Illegal operation... would be nice to have some error-handling.
	// Simply avoid sending random data.
	buffer->size = 0;
}
