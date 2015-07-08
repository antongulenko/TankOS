#ifndef TWI_RPC_CLIENT_H_
#define TWI_RPC_CLIENT_H_

// This file is for the client-side, where the function-skeletons
// for invoking operations are defined.
// This header should be included in another header, that uses the macros to
// describe the RPC functions. One such file is used per device, which must be defined
// using the TWI_DEVICE macro.
// Then, a source file should include that other header and define the
// RPC_CLIENT_IMPLEMENTATION macro, which enables the generation of the function
// bodies.

#include "twi_rpc_client.h"

#ifndef TWI_DEVICE
#error This module requires TWI_DEVICE to be defined!
#endif

// Regarding the macros named ..PVOID.. and ..PNOTIFY:
// The P stands for 'pseudo' and means, that although no useful
// data will be received from the slave, a 'redundant' 
// START - SLA+W - STOP sequence will be transmitted.
// The NIBObee bgx1 extension needs this because of bad design or so.

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
	void funcName(ArgStruct *parameters, uint16_t argSize, ResStruct *out_result, uint16_t resultSize) {	\
		TWIBuffer argBuf = (TWIBuffer) { (byte*) parameters, argSize };			\
		TWIBuffer resBuf = (TWIBuffer) { (byte*) out_result, resultSize };		\
		twi_rpc(TWI_DEVICE, operationByte, argBuf, resBuf);						\
		twiWaitForCompletion(0);															\
	}

#define TWI_RPC_FUNCTION_VARARGS(funcName, operationByte, ArgStruct, ResStruct)	\
	ResStruct funcName(ArgStruct *parameters, uint16_t argSize) {				\
		TWIBuffer argBuf = (TWIBuffer) { (byte*) parameters, argSize };			\
		ResStruct result;														\
		TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(ResStruct) };	\
		twi_rpc(TWI_DEVICE, operationByte, argBuf, resBuf);						\
		twiWaitForCompletion(0);															\
		return result;															\
	}

#define TWI_RPC_FUNCTION_VARRES(funcName, operationByte, ArgStruct, ResStruct)	\
	void funcName(ArgStruct parameters, ResStruct *out_result, uint16_t resultSize) {	\
		TWIBuffer argBuf = (TWIBuffer) { (byte*) &parameters, sizeof(ArgStruct) };		\
		TWIBuffer resBuf = (TWIBuffer) { (byte*) out_result, resultSize };		\
		twi_rpc(TWI_DEVICE, operationByte, argBuf, resBuf);						\
		twiWaitForCompletion(0);															\
	}

#define TWI_RPC_FUNCTION(funcName, operationByte, ArgStruct, ResStruct)			\
	ResStruct funcName(ArgStruct parameters) {									\
		TWIBuffer argBuf = (TWIBuffer) { (byte*) &parameters, sizeof(ArgStruct) };\
		ResStruct result;														\
		TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(ResStruct) };	\
		twi_rpc(TWI_DEVICE, operationByte, argBuf, resBuf);						\
		twiWaitForCompletion(0);															\
		return result;															\
	}

// ==
// Functions with only Arguments
// ==

#define TWI_RPC_FUNCTION_VOID_VAR(funcName, operationByte, ArgStruct)	\
	void funcName(ArgStruct *parameters, uint16_t argSize) {			\
		TWIBuffer buf = (TWIBuffer) { (byte*) parameters, argSize };	\
		twi_rpc_oneway(TWI_DEVICE, operationByte, buf);					\
		twiWaitForCompletion(0);													\
	}

#define TWI_RPC_FUNCTION_VOID(funcName, operationByte, ArgStruct)				\
	void funcName(ArgStruct parameters) {										\
		TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(ArgStruct) };	\
		twi_rpc_oneway(TWI_DEVICE, operationByte, buf);							\
		twiWaitForCompletion(0);															\
	}

#define TWI_RPC_FUNCTION_PVOID(funcName, operationByte, ArgStruct)				\
	void funcName(ArgStruct parameters) {										\
		TWIBuffer buf = (TWIBuffer) { (byte*) &parameters, sizeof(ArgStruct) };	\
		twi_rpc_pseudo_oneway(TWI_DEVICE, operationByte, buf);					\
		twiWaitForCompletion(0);															\
	}

#define TWI_RPC_FUNCTION_PVOID_VAR(funcName, operationByte, ArgStruct)	\
	void funcName(ArgStruct *parameters, uint16_t argSize) {			\
		TWIBuffer buf = (TWIBuffer) { (byte*) parameters, argSize };	\
		twi_rpc_pseudo_oneway(TWI_DEVICE, operationByte, buf);			\
		twiWaitForCompletion(0);													\
	}


// ==
// Functions with only Results
// ==

#define TWI_RPC_FUNCTION_NOARGS(funcName, operationByte, ResStruct)				\
	ResStruct funcName() {														\
		ResStruct result;														\
		TWIBuffer argBuf = (TWIBuffer) { (byte*) NULL, 0 };						\
		TWIBuffer resBuf = (TWIBuffer) { (byte*) &result, sizeof(ResStruct) };	\
		twi_rpc(TWI_DEVICE, operationByte, argBuf, resBuf);						\
		twiWaitForCompletion(0);															\
		return result;															\
	}

#define TWI_RPC_FUNCTION_NOARGS_VAR(funcName, operationByte, ResStruct)			\
	void funcName(ResStruct *out_result, uint16_t resultSize) {					\
		TWIBuffer argBuf = (TWIBuffer) { (byte*) NULL, 0 };						\
		TWIBuffer resBuf = (TWIBuffer) { (byte*) out_result, resultSize };		\
		twi_rpc(TWI_DEVICE, operationByte, argBuf, resBuf);						\
		twiWaitForCompletion(0);															\
	}

// ==
// Functions with neither Arguments nor Results
// ==

#define TWI_RPC_FUNCTION_NOTIFY(funcName, operationByte)		\
	void funcName() {											\
		TWIBuffer argBuf = (TWIBuffer) { (byte*) NULL, 0 };		\
		twi_rpc_oneway(TWI_DEVICE, operationByte, argBuf);		\
		twiWaitForCompletion(0);											\
	}

#define TWI_RPC_FUNCTION_PNOTIFY(funcName, operationByte)		\
	void funcName() {											\
		TWIBuffer argBuf = (TWIBuffer) { (byte*) NULL, 0 };		\
		twi_rpc_pseudo_oneway(TWI_DEVICE, operationByte, argBuf);\
		twiWaitForCompletion(0);											\
	}

#else

// ==
// Functions signatures for regular headers
// ==

// Functions with Arguments and Results

#define TWI_RPC_FUNCTION_VAR(funcName, operationByte, ArgStruct, ResStruct)		\
	void funcName(ArgStruct *parameters, uint16_t argSize, ResStruct *out_result, uint16_t resultSize);

#define TWI_RPC_FUNCTION_VARARGS(funcName, operationByte, ArgStruct, ResStruct)	\
	ResStruct funcName(ArgStruct *parameters, uint16_t argSize);

#define TWI_RPC_FUNCTION_VARRES(funcName, operationByte, ArgStruct, ResStruct)	\
	void funcName(ArgStruct parameters, ResStruct *out_result, uint16_t resultSize);

#define TWI_RPC_FUNCTION(funcName, operationByte, ArgStruct, ResStruct)			\
	ResStruct funcName(ArgStruct parameters);

// Functions with only Arguments

#define TWI_RPC_FUNCTION_VOID_VAR(funcName, operationByte, ArgStruct)			\
	void funcName(ArgStruct *parameters, uint16_t argSize);

#define TWI_RPC_FUNCTION_VOID(funcName, operationByte, ArgStruct)				\
	void funcName(ArgStruct parameters);

#define TWI_RPC_FUNCTION_PVOID(funcName, operationByte, ArgStruct) 				\
	TWI_RPC_FUNCTION_VOID(funcName, operationByte, ArgStruct)

#define TWI_RPC_FUNCTION_PVOID_VAR(funcName, operationByte, ArgStruct) 			\
	TWI_RPC_FUNCTION_VOID_VAR(funcName, operationByte, ArgStruct)

// Functions with only Results

#define TWI_RPC_FUNCTION_NOARGS(funcName, operationByte, ResStruct)				\
	ResStruct funcName();

#define TWI_RPC_FUNCTION_NOARGS_VAR(funcName, operationByte, ResStruct)			\
	void funcName(ResStruct *out_result, uint16_t resultSize);

// Functions with neither Arguments nor Results

#define TWI_RPC_FUNCTION_NOTIFY(funcName, operationByte)						\
	void funcName();

#define TWI_RPC_FUNCTION_PNOTIFY(funcName, operationByte)						\
	TWI_RPC_FUNCTION_NOTIFY(funcName, operationByte)

#endif

#endif
