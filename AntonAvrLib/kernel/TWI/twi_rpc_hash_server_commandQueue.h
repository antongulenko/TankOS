#ifndef TWI_RPC_HASH_SERVER_COMMAND_QUEUE_H_
#define TWI_RPC_HASH_SERVER_COMMAND_QUEUE_H_

#include "../../anton_std.h"

// Include this header, but undef the relevant helper-macros, to redefine
// them here. Makes code, that uses twi_rpc_hash_server source-code compatible
// to twi_rpc_hash_server_commandQueue.
#include "twi_rpc_hash_server.h"
#undef TWI_RPC_SERVER_FUNCTION_ASYNC_VOID
#undef TWI_RPC_SERVER_FUNCTION_ASYNC_NOTIFY

// Returns TRUE, if a function has been executed.
// Returns FALSE, if the queue was empty and nothing was done.
// It is ok to invoke this, even though FALSE was returned.
BOOL invokeCommandQueueElement();

typedef void CommandQueue_NotifyFunction();
typedef void CommandQueue_VoidFunction(void *, uint16_t);

typedef struct {
	BOOL isNotifyFunction;
	union {
		CommandQueue_VoidFunction *voidFunction;
		CommandQueue_NotifyFunction *notifyFunction;
	};
} CommandQueueFunction;

typedef struct {
	CommandQueueFunction func;
	TWIBuffer argumentBuffer;
} CommandQueueElement;

// Called from the helper-macros below.
void addCommandQueueElement(CommandQueueFunction func, TWIBuffer buffer);

// Signature: void funcName(ArgStruct *args, uint16_t size)
#define TWI_RPC_SERVER_FUNCTION_ASYNC_VOID(funcName, operationByte, ArgStruct)	\
	void funcName##_handler(TWIBuffer *buffer) {								\
	addCommandQueueElement((CommandQueueFunction)								\
			{ FALSE, { (CommandQueue_VoidFunction*) &funcName }},				\
			*buffer);															\
		buffer->size = 0;														\
	}																			\
	TWI_RPC_SERVER_FUNCTION_BASE(funcName, operationByte)

// Signature: void funcName()
#define TWI_RPC_SERVER_FUNCTION_ASYNC_NOTIFY(funcName, operationByte)	\
	void funcName##_handler(TWIBuffer *buffer) {						\
		addCommandQueueElement((CommandQueueFunction)					\
			{ TRUE, { (CommandQueue_NotifyFunction*) &funcName }},		\
			*buffer);													\
		buffer->size = 0;												\
	}																	\
	TWI_RPC_SERVER_FUNCTION_BASE(funcName, operationByte)

#endif