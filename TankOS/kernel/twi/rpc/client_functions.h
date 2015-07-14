#ifndef TWI_RPC_CLIENT_H_
#define TWI_RPC_CLIENT_H_

// This file is for the client-side, where the function-skeletons
// for invoking operations are defined.
// This header should be included in another header, that uses the macros to
// describe the RPC functions.
// Then, a source file should include that other header and define the
// RPC_CLIENT_IMPLEMENTATION macro, which enables the generation of the function
// bodies.
// RpcClientResult res must also be defined and will be used as the variable name for
// a globale variable containing the RpcClientResult value returned by each rpc call.

#include "client.h"

// Some helper functions
RpcClientResult twi_rpc_client(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize, byte *out_result, uint16_t resultSize);
RpcClientResult twi_rpc_client_void(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize);
RpcClientResult twi_rpc_client_async(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize);

// This header includes macros both for function prototypes and their
// implementation. Purpose: define one header using these macros, then
// include that header in a .c file defining RPC_CLIENT_IMPLEMENTATION, and also
// in other .c files using the function-prototypes.
#ifdef RPC_CLIENT_IMPLEMENTATION

// ==
// Functions with Arguments and Results
// ==

// The client/master has to tell exactly how many bytes to receive!
#define TWI_RPC_FUNCTION_VAR(funcName, operationByte, ArgStruct, ResStruct)		\
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize, ResStruct *out_result, uint16_t resultSize) { \
        return twi_rpc_client(device, operationByte, (byte*) parameters, argSize, (byte*) out_result, resultSize); \
	}

#define TWI_RPC_FUNCTION_VARARGS(funcName, operationByte, ArgStruct, ResStruct)	  \
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize, ResStruct *out_result) { \
        return twi_rpc_client(device, operationByte, (byte*) parameters, argSize, (byte*) out_result, sizeof(ResStruct)); \
	}

#define TWI_RPC_FUNCTION_VARRES(funcName, operationByte, ArgStruct, ResStruct)	     \
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters, ResStruct *out_result, uint16_t resultSize) { \
        return twi_rpc_client(device, operationByte, (byte*) &parameters, sizeof(ArgStruct), (byte*) out_result, resultSize); \
	}

#define TWI_RPC_FUNCTION(funcName, operationByte, ArgStruct, ResStruct)			    \
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters, ResStruct *out_result) { \
        return twi_rpc_client(device, operationByte, (byte*) &parameters, sizeof(ArgStruct), (byte*) out_result, sizeof(ResStruct)); \
	}

// ==
// Functions with only Arguments
// Async is the same as void, but there will be no reply at all received from the server, not even status codes or validity checks
// ==

#define TWI_RPC_FUNCTION_VOID_VAR(funcName, operationByte, ArgStruct) \
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize) { \
        return twi_rpc_client_void(device, operationByte, (byte*) parameters, argSize); \
	}

#define TWI_RPC_FUNCTION_VOID(funcName, operationByte, ArgStruct) \
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters) { \
        return twi_rpc_client_void(device, operationByte, (byte*) &parameters, sizeof(ArgStruct)); \
	}

#define TWI_RPC_FUNCTION_ASYNC_VAR(funcName, operationByte, ArgStruct) \
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize) { \
        return twi_rpc_client_async(device, operationByte, (byte*) parameters, argSize); \
	}

#define TWI_RPC_FUNCTION_ASYNC(funcName, operationByte, ArgStruct) \
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters) { \
        return twi_rpc_client_async(device, operationByte, (byte*) &parameters, sizeof(ArgStruct)); \
	}


// ==
// Functions with only Results
// ==

#define TWI_RPC_FUNCTION_NOARGS(funcName, operationByte, ResStruct) \
	RpcClientResult funcName(TWIDevice device, ResStruct *out_result) { \
        return twi_rpc_client(device, operationByte, (byte*) NULL, 0, (byte*) out_result, sizeof(ResStruct)); \
	}

#define TWI_RPC_FUNCTION_NOARGS_VAR(funcName, operationByte, ResStruct) \
	RpcClientResult funcName(TWIDevice device, ResStruct *out_result, uint16_t resultSize) { \
        return twi_rpc_client(device, operationByte, (byte*) NULL, 0, (byte*) out_result, resultSize); \
	}

// ==
// Functions with neither Arguments nor Results
// ==

#define TWI_RPC_FUNCTION_NOTIFY(funcName, operationByte) \
	RpcClientResult funcName(TWIDevice device) { \
        return twi_rpc_client_void(device, operationByte, (byte*) NULL, 0); \
	}

#define TWI_RPC_FUNCTION_NOTIFY_ASYNC(funcName, operationByte) \
	RpcClientResult funcName(TWIDevice device) { \
        return twi_rpc_client_async(device, operationByte, (byte*) NULL, 0); \
	}

#else

// ==
// Functions signatures for regular headers
// ==

// Functions with Arguments and Results

#define TWI_RPC_FUNCTION_VAR(funcName, operationByte, ArgStruct, ResStruct)		\
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize, ResStruct *out_result, uint16_t resultSize);

#define TWI_RPC_FUNCTION_VARARGS(funcName, operationByte, ArgStruct, ResStruct)	\
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize, ResStruct *out_result);

#define TWI_RPC_FUNCTION_VARRES(funcName, operationByte, ArgStruct, ResStruct)	\
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters, ResStruct *out_result, uint16_t resultSize);

#define TWI_RPC_FUNCTION(funcName, operationByte, ArgStruct, ResStruct)			\
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters, ResStruct *out_result);

// Functions with only Arguments

#define TWI_RPC_FUNCTION_VOID_VAR(funcName, operationByte, ArgStruct)			\
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize);

#define TWI_RPC_FUNCTION_VOID(funcName, operationByte, ArgStruct)				\
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters);

#define TWI_RPC_FUNCTION_ASYNC(funcName, operationByte, ArgStruct) 				\
	TWI_RPC_FUNCTION_VOID(funcName, operationByte, ArgStruct)

#define TWI_RPC_FUNCTION_ASYNC_VAR(funcName, operationByte, ArgStruct) 			\
	TWI_RPC_FUNCTION_VOID_VAR(funcName, operationByte, ArgStruct)

// Functions with only Results

#define TWI_RPC_FUNCTION_NOARGS(funcName, operationByte, ResStruct)				\
	RpcClientResult funcName(TWIDevice device, ResStruct *out_result);

#define TWI_RPC_FUNCTION_NOARGS_VAR(funcName, operationByte, ResStruct)			\
	RpcClientResult funcName(TWIDevice device, ResStruct *out_result, uint16_t resultSize);

// Functions with neither Arguments nor Results

#define TWI_RPC_FUNCTION_NOTIFY(funcName, operationByte)						\
	RpcClientResult funcName(TWIDevice device);

#define TWI_RPC_FUNCTION_NOTIFY_ASYNC(funcName, operationByte)				    \
	TWI_RPC_FUNCTION_NOTIFY(funcName, operationByte)

#endif

#endif
