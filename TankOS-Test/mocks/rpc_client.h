/*
 *  Created on: 14.12.2012
 *      Author: Anton
 */

#ifndef TESTRPCCLIENT_H_
#define TESTRPCCLIENT_H_

#include <kernel/twi/driver/driver.h>
#include "twi_driver_master.h"

#define TWI_DEVICE test_device
#define TWI_RPC_STATUS_VARIABLE test_rpc_status

#include <kernel/twi/rpc/client_functions.h>

typedef struct TestArgStruct {
	int arg1;
	float arg2;
} TestArgStruct;

typedef struct TestResStruct {
	int res0;
    float res1;
	char res2[3];
} TestResStruct;

enum {
	OP_RPC_VAR = 55,
	OP_RPC_VARARGS,
	OP_RPC_VARRES,
	OP_RPC_NORMAL,
	OP_RPC_VOID_VAR,
	OP_RPC_VOID,
	OP_RPC_PVOID,
	OP_RPC_PVOID_VAR,
	OP_RPC_NOARGS,
	OP_RPC_NOARGS_VAR,
	OP_RPC_NOTIFY,
	OP_RPC_PNOTIFY
};

// Define one function of each type for the test rpc client

TWI_RPC_FUNCTION_VAR(rpcVar, OP_RPC_VAR, TestArgStruct, TestResStruct)
TWI_RPC_FUNCTION_VARARGS(rpcVarArgs, OP_RPC_VARARGS, TestArgStruct, TestResStruct)
TWI_RPC_FUNCTION_VARRES(rpcVarRes, OP_RPC_VARRES, TestArgStruct, TestResStruct)
TWI_RPC_FUNCTION(rpcNormal, OP_RPC_NORMAL, TestArgStruct, TestResStruct)
TWI_RPC_FUNCTION_VOID_VAR(rpcVoidVar, OP_RPC_VOID_VAR, TestArgStruct)
TWI_RPC_FUNCTION_VOID(rpcVoid, OP_RPC_VOID, TestArgStruct)
TWI_RPC_FUNCTION_PVOID(rpcPVoid, OP_RPC_PVOID, TestArgStruct)
TWI_RPC_FUNCTION_PVOID_VAR(rpcPVoidVar, OP_RPC_PVOID_VAR, TestArgStruct)
TWI_RPC_FUNCTION_NOARGS(rpcNoargs, OP_RPC_NOARGS, TestResStruct)
TWI_RPC_FUNCTION_NOARGS_VAR(rpcNoargsVar, OP_RPC_NOARGS_VAR, TestResStruct)
TWI_RPC_FUNCTION_NOTIFY(rpcNotify, OP_RPC_NOTIFY)
TWI_RPC_FUNCTION_PNOTIFY(rpcPNotify, OP_RPC_PNOTIFY)

// These are "wrong", used in end_to_end.test.c
TWI_RPC_FUNCTION(rpcNormal_wrongOperation, OP_RPC_PNOTIFY, TestArgStruct, TestResStruct)
TWI_RPC_FUNCTION(rpcNormal_wrongParameters, OP_RPC_NORMAL, int, TestResStruct)

#endif /* TESTRPCCLIENT_H_ */
