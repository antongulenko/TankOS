#ifndef TWI_RPC_CLIENT_H_
#define TWI_RPC_CLIENT_H_

// Intended use of this header:
// 1. Include in other header and define the functions. Generates function signatures.
// 2. Include that header in a c-module and define RPC_CLIENT_IMPLEMENTATION. Generates the stub-implementations for the functions.
// 3. (Optional) Include that header in another c-module and define RPC_CLIENT_FUNCTION_REGISTRY. Generates KERNEL_INIT routines
//               that register the functions and function-names with client_functions_registry.h

#include "client.h"
#include <platform/kernel_init.h>

typedef RpcClientResult (*RpcQueryFunction)(TWIDevice);
typedef int (*ClientResultFormatter)(int (*print)(const char *fmt, ...), void *results, uint16_t results_length);

void registerClientFunction(char *funcName, RpcQueryFunction function, uint8_t argument_bytes, uint8_t result_bytes,
                            BOOL variable_arguments, BOOL variable_results, byte operation, ClientResultFormatter result_formatter); // client_functions.c

RpcClientResult twi_rpc_client(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize, byte *out_result, uint16_t resultSize);
RpcClientResult twi_rpc_client_void(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize);
RpcClientResult twi_rpc_client_async(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize);

#define CLIENT_RESULT_FORMAT(funcName) \
    int funcName##_format(int (*print)(const char *fmt, ...), void *results, uint16_t results_length);

#ifndef RPC_CLIENT_IMPLEMENTATION

#ifdef RPC_CLIENT_FUNCTION_REGISTRY

// ==
// KERNEL_INIT registration-functions for c-modules defining RPC_CLIENT_FUNCTION_REGISTRY
// ==
// The 3. functionality explained above

#define REGISTER_CLIENT_FUNCTION(funcName, argument_bytes, result_bytes, variable_arguments, variable_results, operation) \
    void register_client_##funcName() { \
        registerClientFunction(#funcName, (RpcQueryFunction) &funcName, argument_bytes, result_bytes, \
                                variable_arguments, variable_results, operation, NULL); \
    } \
    KERNEL_INIT(register_client_##funcName)

#define REGISTER_CLIENT_FUNCTION_FMT(funcName, argument_bytes, result_bytes, variable_arguments, variable_results, operation) \
    CLIENT_RESULT_FORMAT(funcName) \
    void register_client_##funcName() { \
        registerClientFunction(#funcName, (RpcQueryFunction) &funcName, argument_bytes, result_bytes, \
                                variable_arguments, variable_results, operation, funcName##_format); \
    } \
    KERNEL_INIT(register_client_##funcName)

#else
#define REGISTER_CLIENT_FUNCTION(funcName, argument_bytes, result_bytes, variable_arguments, variable_results, operation)
#define REGISTER_CLIENT_FUNCTION_FMT(funcName, argument_bytes, result_bytes, variable_arguments, variable_results, operation) \
    CLIENT_RESULT_FORMAT(funcName)
#endif // RPC_CLIENT_FUNCTION_REGISTRY

// ==
// Function signatures for regular headers
// ==
// The 1. functionality explained above

// Functions with Arguments and Results

#define TWI_RPC_FUNCTION_VAR(funcName, operationByte, ArgStruct, ResStruct)		                                                     \
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize, ResStruct *out_result, uint16_t resultSize); \
    REGISTER_CLIENT_FUNCTION_FMT(funcName, 0, 0, TRUE, TRUE, operationByte)

#define TWI_RPC_FUNCTION_VARARGS(funcName, operationByte, ArgStruct, ResStruct)	                                \
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize, ResStruct *out_result); \
    REGISTER_CLIENT_FUNCTION_FMT(funcName, 0, sizeof(ResStruct), TRUE, FALSE, operationByte)

#define TWI_RPC_FUNCTION_VARRES(funcName, operationByte, ArgStruct, ResStruct)	                                  \
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters, ResStruct *out_result, uint16_t resultSize); \
    REGISTER_CLIENT_FUNCTION_FMT(funcName, sizeof(ArgStruct), 0, FALSE, TRUE, operationByte)

#define TWI_RPC_FUNCTION(funcName, operationByte, ArgStruct, ResStruct)			             \
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters, ResStruct *out_result); \
    REGISTER_CLIENT_FUNCTION_FMT(funcName, sizeof(ArgStruct), sizeof(ResStruct), FALSE, FALSE, operationByte)

// Functions with only Arguments

#define TWI_RPC_FUNCTION_VOID_VAR(funcName, operationByte, ArgStruct)			         \
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize); \
    REGISTER_CLIENT_FUNCTION(funcName, 0, 0, TRUE, FALSE, operationByte)

#define TWI_RPC_FUNCTION_VOID(funcName, operationByte, ArgStruct)				\
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters);           \
    REGISTER_CLIENT_FUNCTION(funcName, sizeof(ArgStruct), 0, FALSE, FALSE, operationByte)

#define TWI_RPC_FUNCTION_ASYNC(funcName, operationByte, ArgStruct) 				\
	TWI_RPC_FUNCTION_VOID(funcName, operationByte, ArgStruct)

#define TWI_RPC_FUNCTION_ASYNC_VAR(funcName, operationByte, ArgStruct) 			\
	TWI_RPC_FUNCTION_VOID_VAR(funcName, operationByte, ArgStruct)

// Functions with only Results

#define TWI_RPC_FUNCTION_NOARGS(funcName, operationByte, ResStruct)				\
	RpcClientResult funcName(TWIDevice device, ResStruct *out_result);          \
    REGISTER_CLIENT_FUNCTION_FMT(funcName, 0, sizeof(ResStruct), FALSE, FALSE, operationByte)

#define TWI_RPC_FUNCTION_NOARGS_VAR(funcName, operationByte, ResStruct)			            \
	RpcClientResult funcName(TWIDevice device, ResStruct *out_result, uint16_t resultSize); \
    REGISTER_CLIENT_FUNCTION_FMT(funcName, 0, 0, FALSE, TRUE, operationByte)

// Functions with neither Arguments nor Results

#define TWI_RPC_FUNCTION_NOTIFY(funcName, operationByte)						\
	RpcClientResult funcName(TWIDevice device);                                 \
    REGISTER_CLIENT_FUNCTION(funcName, 0, 0, FALSE, FALSE, operationByte)

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
    CLIENT_RESULT_FORMAT(funcName) \
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize, ResStruct *out_result, uint16_t resultSize) { \
        return twi_rpc_client(device, operationByte, (byte*) parameters, argSize, (byte*) out_result, resultSize); \
	}

#define TWI_RPC_FUNCTION_VARARGS(funcName, operationByte, ArgStruct, ResStruct)	  \
    CLIENT_RESULT_FORMAT(funcName) \
	RpcClientResult funcName(TWIDevice device, ArgStruct *parameters, uint16_t argSize, ResStruct *out_result) { \
        return twi_rpc_client(device, operationByte, (byte*) parameters, argSize, (byte*) out_result, sizeof(ResStruct)); \
	}

#define TWI_RPC_FUNCTION_VARRES(funcName, operationByte, ArgStruct, ResStruct)	     \
    CLIENT_RESULT_FORMAT(funcName) \
	RpcClientResult funcName(TWIDevice device, ArgStruct parameters, ResStruct *out_result, uint16_t resultSize) { \
        return twi_rpc_client(device, operationByte, (byte*) &parameters, sizeof(ArgStruct), (byte*) out_result, resultSize); \
	}

#define TWI_RPC_FUNCTION(funcName, operationByte, ArgStruct, ResStruct)			    \
    CLIENT_RESULT_FORMAT(funcName) \
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
    CLIENT_RESULT_FORMAT(funcName) \
	RpcClientResult funcName(TWIDevice device, ResStruct *out_result) { \
        return twi_rpc_client(device, operationByte, (byte*) NULL, 0, (byte*) out_result, sizeof(ResStruct)); \
	}

#define TWI_RPC_FUNCTION_NOARGS_VAR(funcName, operationByte, ResStruct) \
    CLIENT_RESULT_FORMAT(funcName) \
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
