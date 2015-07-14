
#include "client_functions.h"

#define WAIT_FOR_COMPLETION_TIME 0

RpcClientResult twi_rpc_client(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize, byte *out_result, uint16_t resultSize) {
    TWIBuffer argBuf = (TWIBuffer) { parameters, argSize };
	TWIBuffer resBuf = (TWIBuffer) { out_result, resultSize };
	RpcClientResult res = twi_rpc(device, operationByte, argBuf, resBuf);
	twiWaitForCompletion(WAIT_FOR_COMPLETION_TIME);
    return res;
}

RpcClientResult twi_rpc_client_void(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize) {
    TWIBuffer buf = (TWIBuffer) { parameters, argSize };
    RpcClientResult res = twi_rpc_void(device, operationByte, buf);
	twiWaitForCompletion(WAIT_FOR_COMPLETION_TIME);
    return res;
}

RpcClientResult twi_rpc_client_async(TWIDevice device, byte operationByte, byte *parameters, uint16_t argSize) {
    TWIBuffer buf = (TWIBuffer) { parameters, argSize };
    RpcClientResult res = twi_rpc_async(device, operationByte, buf);
	twiWaitForCompletion(WAIT_FOR_COMPLETION_TIME);
    return res;
}
