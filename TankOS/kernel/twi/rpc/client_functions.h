#ifndef TWI_RPC_CLIENT_H_
#define TWI_RPC_CLIENT_H_

// Intended use of this header:
// 1. Include in other header and define the functions. Generates function signatures.
// 2. Include that header in a c-module and define RPC_CLIENT_IMPLEMENTATION. Generates the stub-implementations for the functions.
// 3. (Optional) Include that header in another c-module and define RPC_CLIENT_FUNCTION_REGISTRY. Generates KERNEL_INIT routines
//               that register the functions and function-names with client_functions_registry.h

#include "client.h"
#include <kernel/kernel_init.h>

typedef RpcClientResult (*RpcQueryFunction)(TWIDevice);
void registerClientFunction(char *name, RpcQueryFunction function);

RpcClientResult twi_rpc_client(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize, byte *out_result, uint16_t resultSize);
RpcClientResult twi_rpc_client_void(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize);
RpcClientResult twi_rpc_client_async(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize);


#ifndef RPC_CLIENT_IMPLEMENTATION

#ifdef RPC_CLIENT_FUNCTION_REGISTRY

// ==
// KERNEL_INIT registration-functions for c-modules defining RPC_CLIENT_FUNCTION_REGISTRY
// ==
// The 3. functionality explained above

// TODO - register additional information about parameter/argument size

#define REGISTER_CLIENT_FUNCTION(funcName) \
    void funcName##_registering() { \
        registerClientFunction(#funcName, (RpcQueryFunction) &funcName); \
    } \
    KERNEL_INIT(funcName##_registering)

#else
#define REGISTER_CLIENT_FUNCTION(funcName)
#endif // RPC_CLIENT_FUNCTION_REGISTRY

// ==
// Function signatures for regular headers
// ==
// The 1. functionality explained above

// Functions with Arguments and Results

#define TWI_RPC_FUNCTION_VAR(funcName, operationByte, ArgStruct, ResStruct)		                                                     \
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize, ResStruct *out_result, uint16_t resultSize); \
    REGISTER_CLIENT_FUNCTION(funcName)

#define TWI_RPC_FUNCTION_VARARGS(funcName, operationByte, ArgStruct, ResStruct)	                                \
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize, ResStruct *out_result); \
    REGISTER_CLIENT_FUNCTION(funcName)

#define TWI_RPC_FUNCTION_VARRES(funcName, operationByte, ArgStruct, ResStruct)	                                  \
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters, ResStruct *out_result, uint16_t resultSize); \
    REGISTER_CLIENT_FUNCTION(funcName)

#define TWI_RPC_FUNCTION(funcName, operationByte, ArgStruct, ResStruct)			             \
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters, ResStruct *out_result); \
    REGISTER_CLIENT_FUNCTION(funcName)

// Functions with only Arguments

#define TWI_RPC_FUNCTION_VOID_VAR(funcName, operationByte, ArgStruct)			         \
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize); \
    REGISTER_CLIENT_FUNCTION(funcName)

#define TWI_RPC_FUNCTION_VOID(funcName, operationByte, ArgStruct)				\
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters);           \
    REGISTER_CLIENT_FUNCTION(funcName)

#define TWI_RPC_FUNCTION_ASYNC(funcName, operationByte, ArgStruct) 				\
	TWI_RPC_FUNCTION_VOID(funcName, operationByte, ArgStruct)

#define TWI_RPC_FUNCTION_ASYNC_VAR(funcName, operationByte, ArgStruct) 			\
	TWI_RPC_FUNCTION_VOID_VAR(funcName, operationByte, ArgStruct)

// Functions with only Results

#define TWI_RPC_FUNCTION_NOARGS(funcName, operationByte, ResStruct)				\
	RpcClientResult funcName(TWIDevice device, ResStruct *out_result);          \
    REGISTER_CLIENT_FUNCTION(funcName)

#define TWI_RPC_FUNCTION_NOARGS_VAR(funcName, operationByte, ResStruct)			            \
	RpcClientResult funcName(TWIDevice device, ResStruct *out_result, uint16_t resultSize); \
    REGISTER_CLIENT_FUNCTION(funcName)

// Functions with neither Arguments nor Results

#define TWI_RPC_FUNCTION_NOTIFY(funcName, operationByte)						\
	RpcClientResult funcName(TWIDevice device);                                 \
    REGISTER_CLIENT_FUNCTION(funcName)

#define TWI_RPC_FUNCTION_NOTIFY_ASYNC(funcName, operationByte)				    \
	TWI_RPC_FUNCTION_NOTIFY(funcName, operationByte)

#else
// RPC_CLIENT_IMPLEMENTATION

// ==
// Function stub-implementations for c-modules defining RPC_CLIENT_IMPLEMENTATION
// ==
// The 2. functionality explained above

// Functions with Arguments and Results

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

// Functions with only Arguments
// Async is the same as void, but there will be no reply at all received from the server, not even status codes or validity checks

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


// Functions with only Results

#define TWI_RPC_FUNCTION_NOARGS(funcName, operationByte, ResStruct) \
	RpcClientResult funcName(TWIDevice device, ResStruct *out_result) { \
        return twi_rpc_client(device, operationByte, (byte*) NULL, 0, (byte*) out_result, sizeof(ResStruct)); \
	}

#define TWI_RPC_FUNCTION_NOARGS_VAR(funcName, operationByte, ResStruct) \
	RpcClientResult funcName(TWIDevice device, ResStruct *out_result, uint16_t resultSize) { \
        return twi_rpc_client(device, operationByte, (byte*) NULL, 0, (byte*) out_result, resultSize); \
	}

// Functions with neither Arguments nor Results

#define TWI_RPC_FUNCTION_NOTIFY(funcName, operationByte) \
	RpcClientResult funcName(TWIDevice device) { \
        return twi_rpc_client_void(device, operationByte, (byte*) NULL, 0); \
	}

#define TWI_RPC_FUNCTION_NOTIFY_ASYNC(funcName, operationByte) \
	RpcClientResult funcName(TWIDevice device) { \
        return twi_rpc_client_async(device, operationByte, (byte*) NULL, 0); \
	}

#endif // RPC_CLIENT_IMPLEMENTATION

#endif // TWI_RPC_CLIENT_H_
