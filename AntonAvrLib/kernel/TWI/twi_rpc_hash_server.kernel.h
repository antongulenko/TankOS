#ifndef _TWI_RPC_HASH_SERVER_KERNEL_
#define _TWI_RPC_HASH_SERVER_KERNEL_

// This file is for the 'server' side, where the actual handling functions are defined.

#include "twi_rpc.kernel.h"
#define HASH_FUNCTION HASH_SAX // Use other function to operate with short keys.
#include <uthash/uthash.h>

typedef void TwiRpcFunction(TWIBuffer *arguments);

typedef struct {
	byte operation; // The hash-key
	TwiRpcFunction *associatedFunction;
	UT_hash_handle hh;
} TwiFunction, *PTwiFunction;

// The hash-structure used by the uthash implementation
PTwiFunction twiRpcFunctions = NULL;

void twi_handleRpcRequest(byte operation, TWIBuffer *arguments) {
	PTwiFunction result;
	HASH_FIND_INT(twiRpcFunctions, &operation, result);
	if (result)
		result->associatedFunction(arguments);
	else
		arguments->size = 0;
}

// Fills the buffer with the result, assuming a struct of fixed size is returned.
#define FILL_RESULT(resultBuffer, result, ResultType)	\
	*(ResultType*) resultBuffer->data = result;			\
	resultBuffer->size = sizeof(ResultType);

// Fills the buffer with a variable amount of data from the result pointer.
#define FILL_VAR_RESULT(resultBuffer, result, size)		\
	memcpy(resultBuffer->data, result, size);			\
	resultBuffer->size = size;

#define TWI_RPC_SERVER_FUNCTION_BASE(funcName, operationByte)						\
	TwiFunction funcName##_function = { operationByte, funcName##_handler, {0} };	\
	void funcName##_register_function() {											\
		/* The second macro parameter 'operation' is the name of the key-field in */\
		/* the TwiFunction struct! Do not change to operationByte. */				\
		HASH_ADD_INT(twiRpcFunctions, operation, &funcName##_function);				\
	}																				\
	KERNEL_INIT(funcName##_register_function)

// Function funcName must have signature:
// void funcName(ArgStruct *args, uint16_t argSize, TWIBuffer *resultBuffer);
// The arguments reside in the same buffer as the results, so must be read first.
#define TWI_RPC_SERVER_FUNCTION(funcName, operationByte, ArgStruct, ResultStruct)	\
	void funcName##_handler(TWIBuffer *arguments) {									\
		ArgStruct *args = (ArgStruct*) arguments->data;								\
		uint16_t resultSize = 0;													\
		funcName(args, arguments->size, arguments);									\
	}																				\
	TWI_RPC_SERVER_FUNCTION_BASE(funcName, operationByte)
	
// Signature: void funcName(ArgStruct *args, uint16_t size)
#define TWI_RPC_SERVER_FUNCTION_VOID(funcName, operationByte, ArgStruct)			\
	void funcName##_handler(TWIBuffer *arguments) {									\
		funcName((ArgStruct*) arguments->data, arguments->size);					\
	}																				\
	TWI_RPC_SERVER_FUNCTION_BASE(funcName, operationByte)

// Signature: void funcName(TWIBuffer *resultBuffer)
// If out_resultSize is not modified, the size of the ResultStruct struct is used.
#define TWI_RPC_SERVER_FUNCTION_NOARGS(funcName, operationByte, ResultStruct)		\
	void funcName##_handler(TWIBuffer *arguments) {									\
		funcName(arguments);														\
	}																				\
	TWI_RPC_SERVER_FUNCTION_BASE(funcName, operationByte)

// Signature: void funcName()
#define TWI_RPC_SERVER_FUNCTION_NOTIFY(funcName, operationByte)						\
	void funcName##_handler(TWIBuffer *arguments) {									\
		funcName();																	\
	}																				\
	TWI_RPC_SERVER_FUNCTION_BASE(funcName, operationByte)

#endif