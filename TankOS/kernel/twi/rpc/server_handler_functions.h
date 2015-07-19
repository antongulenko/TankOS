
// This file is for the 'server' side, where the actual handling functions are defined.
// Handlers for RPC calls can be added to a hash-table mapping the operation-byte to
// handler functions. This saves memory compared to a complete 256-entry table.

#include "server_handler.h"
#include <kernel/kernel_init.h>

#define HASH_FUNCTION HASH_SAX // Use other function to operate with short keys.
#include <uthash/uthash.h>

#define HASH_ADD_BYTE(head,bytefield,add)                                          \
    HASH_ADD(hh,head,bytefield,sizeof(byte),add)
#define HASH_FIND_BYTE(head,findbyte,out)                                          \
    HASH_FIND(hh,head,findbyte,sizeof(byte),out)

// This function is always implemented through a *_handler() function
// created by one of the macros below.
typedef RpcHandlerStatus TwiRpcHandlerFunction(TWIBuffer *buffer);

typedef struct {
	byte operation; // The hash-key
	TwiRpcHandlerFunction *handlerFunction;
	UT_hash_handle hh;
} TwiFunction, *PTwiFunction;

// The hash-structure used by the uthash implementation
extern PTwiFunction twiRpcFunctions;

// This base-macro defines the global TwiFunction struct and registers
// it in the hash-table for twi-function-handlers.
#define TWI_RPC_SERVER_REGISTER_FUNCTION(funcName, operationByte)					\
	TwiFunction funcName##_function = { operationByte, funcName##_handler, {0} };	\
	static __attribute__ ((noinline)) void funcName##_register_function() {			\
		/* The second macro parameter 'operation' is the name of the key-field in */\
		/* the TwiFunction struct! Do not change to 'operationByte'. */				\
		HASH_ADD_BYTE(twiRpcFunctions, operation, &funcName##_function);			\
	}																				\
	KERNEL_INIT(funcName##_register_function)

// Signature: RpcHandlerStatus funcName(ArgStruct *args, uint16_t argSize, TWIBuffer *resultBuffer)
#define TWI_RPC_SERVER_FUNCTION(funcName, operationByte, ArgStruct)	                \
	RpcHandlerStatus funcName##_handler(TWIBuffer *buffer) {						\
        ArgStruct *args = (ArgStruct*) alloca(buffer->size);                        \
        memcpy(args, buffer->data, buffer->size);                                   \
		return funcName(args, buffer->size, buffer);								\
	}																				\
	TWI_RPC_SERVER_REGISTER_FUNCTION(funcName, operationByte)

// Signature: RpcHandlerStatus funcName(ArgStruct *args, uint16_t size)
#define TWI_RPC_SERVER_FUNCTION_VOID(funcName, operationByte, ArgStruct)	         \
	RpcHandlerStatus funcName##_handler(TWIBuffer *buffer) {				         \
        RpcHandlerStatus result = funcName((ArgStruct*) buffer->data, buffer->size); \
        buffer->size = 0;	                                                         \
        return result;                                                               \
	}																		         \
	TWI_RPC_SERVER_REGISTER_FUNCTION(funcName, operationByte)

// Signature: RpcHandlerStatus funcName(TWIBuffer *resultBuffer)
#define TWI_RPC_SERVER_FUNCTION_NOARGS(funcName, operationByte)		                \
	RpcHandlerStatus funcName##_handler(TWIBuffer *buffer) {						\
		return funcName(buffer);													\
	}																				\
	TWI_RPC_SERVER_REGISTER_FUNCTION(funcName, operationByte)

// Signature: RpcHandlerStatus funcName()
#define TWI_RPC_SERVER_FUNCTION_NOTIFY(funcName, operationByte)	\
	RpcHandlerStatus funcName##_handler(TWIBuffer *buffer) {	\
		buffer->size = 0;                                       \
        return funcName();										\
	}															\
	TWI_RPC_SERVER_REGISTER_FUNCTION(funcName, operationByte)

// ==
// Macros for the actual function-implementations.
// ==

// Fills the buffer with the result, assuming a struct of fixed size is returned.
#define FILL_RESULT(resultBuffer, ResultType, result)	\
	*(ResultType*) resultBuffer->data = result;			\
	resultBuffer->size = sizeof(ResultType);

// Fills the buffer with a variable amount of data from the result pointer.
#define FILL_VAR_RESULT(resultBuffer, the_size, result)		\
	memcpy(resultBuffer->data, result, the_size);			\
	resultBuffer->size = the_size;
