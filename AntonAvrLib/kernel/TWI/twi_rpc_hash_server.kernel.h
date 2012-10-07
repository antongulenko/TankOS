#ifndef _TWI_RPC_HASH_SERVER_KERNEL_
#define _TWI_RPC_HASH_SERVER_KERNEL_

// This file is for the 'server' side, where the actual handling functions are defined.

#include "twi_rpc.kernel.h"
#define HASH_FUNCTION HASH_SAX // Use other function to operate with short keys.
#include <uthash/uthash.h>

// This function is always implemented through a *_handler() function
// created by one of the macros below.
typedef void TwiRpcFunction(TWIBuffer *buffer);

typedef struct {
	byte operation; // The hash-key
	TwiRpcFunction *associatedFunction;
	UT_hash_handle hh;
} TwiFunction, *PTwiFunction;

// The hash-structure used by the uthash implementation
PTwiFunction twiRpcFunctions = NULL;

// buffer containes the arguments and the result afterwards.
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

// This base-macro defines the global TwiFunction struct and registers
// it in the hash-table for twi-function-handlers.
#define TWI_RPC_SERVER_FUNCTION_BASE(funcName, operationByte)						\
	TwiFunction funcName##_function = { operationByte, funcName##_handler, {0} };	\
	void funcName##_register_function() {											\
		/* The second macro parameter 'operation' is the name of the key-field in */\
		/* the TwiFunction struct! Do not change to 'operationByte'. */				\
		HASH_ADD_INT(twiRpcFunctions, operation, &funcName##_function);				\
	}																				\
	KERNEL_INIT(funcName##_register_function)

// Function funcName must have signature:
// void funcName(ArgStruct *args, uint16_t argSize, TWIBuffer *resultBuffer);
// The arguments reside in the same buffer as the results, so must be read first.
#define TWI_RPC_SERVER_FUNCTION(funcName, operationByte, ArgStruct, ResultStruct)	\
	void funcName##_handler(TWIBuffer *buffer) {									\
		ArgStruct *args = (ArgStruct*) buffer->data;								\
		funcName(args, buffer->size, buffer);										\
	}																				\
	TWI_RPC_SERVER_FUNCTION_BASE(funcName, operationByte)
	
// Signature: void funcName(ArgStruct *args, uint16_t size)
#define TWI_RPC_SERVER_FUNCTION_VOID(funcName, operationByte, ArgStruct)	\
	void funcName##_handler(TWIBuffer *buffer) {							\
		funcName((ArgStruct*) buffer->data, buffer->size);					\
		buffer->size = 0;													\
	}																		\
	TWI_RPC_SERVER_FUNCTION_BASE(funcName, operationByte)

// Signature: void funcName(TWIBuffer *resultBuffer)
#define TWI_RPC_SERVER_FUNCTION_NOARGS(funcName, operationByte, ResultStruct)		\
	void funcName##_handler(TWIBuffer *buffer) {									\
		funcName(buffer);															\
	}																				\
	TWI_RPC_SERVER_FUNCTION_BASE(funcName, operationByte)

// Signature: void funcName()
#define TWI_RPC_SERVER_FUNCTION_NOTIFY(funcName, operationByte)	\
	void funcName##_handler(TWIBuffer *buffer) {				\
		funcName();												\
		buffer->size = 0;										\
	}															\
	TWI_RPC_SERVER_FUNCTION_BASE(funcName, operationByte)

// To let applications be source-code compatible to twi_rpc_hash_server_commandQueue.
#define TWI_RPC_SERVER_FUNCTION_ASYNC_VOID(a, b, c) TWI_RPC_SERVER_FUNCTION_VOID(a, b, c)
#define TWI_RPC_SERVER_FUNCTION_ASYNC_NOTIFY(a, b) TWI_RPC_SERVER_FUNCTION_NOTIFY(a, b)

// ==
// Macros for the actual function-implementations.
// ==

// Fills the buffer with the result, assuming a struct of fixed size is returned.
#define FILL_RESULT(resultBuffer, result, ResultType)	\
	*(ResultType*) resultBuffer->data = result;			\
	resultBuffer->size = sizeof(ResultType);

// Fills the buffer with a variable amount of data from the result pointer.
#define FILL_VAR_RESULT(resultBuffer, result, size)		\
	memcpy(resultBuffer->data, result, size);			\
	resultBuffer->size = size;

#endif