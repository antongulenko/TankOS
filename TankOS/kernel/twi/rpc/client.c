
#include "client.h"
#include <string.h>

TWIBuffer sendBuffer = { 0, 0 };
uint16_t sendBufferSize;

void twi_rpc_client_init(TWIBuffer parameterBuffer) {
	sendBuffer = parameterBuffer;
    sendBufferSize = parameterBuffer.size;
}

static inline BOOL fillSendBuffer(byte operation, TWIBuffer parameters) {
    if (sendBufferSize < parameters.size + 1) {
        return FALSE;
    }
    sendBuffer.data[0] = operation;
	sendBuffer.size = parameters.size + 1;
	memcpy(sendBuffer.data + 1, parameters.data, parameters.size);
    return TRUE;
}

static inline RpcClientStatus status() {
    return twi_error == TWI_No_Error ? TWI_RPC_success : TWI_RPC_driver_error;
}

RpcClientStatus twi_rpc_oneway(TWIDevice device, byte operation, TWIBuffer parameters) {
	if (!fillSendBuffer(operation, parameters))
        return TWI_RPC_send_buffer_too_small;
	twiSend(device, sendBuffer);
    return status();
}

RpcClientStatus twi_rpc_pseudo_oneway(TWIDevice device, byte operation, TWIBuffer parameters) {
	if (!fillSendBuffer(operation, parameters))
        return TWI_RPC_send_buffer_too_small;
	twiSendReceive(device, sendBuffer, (TWIBuffer) { 0, 0 });
    return status();
}

RpcClientStatus twi_rpc(TWIDevice device, byte operation, TWIBuffer parameters, TWIBuffer resultBuffer) {
	if (!fillSendBuffer(operation, parameters))
        return TWI_RPC_send_buffer_too_small;
	twiSendReceive(device, sendBuffer, resultBuffer);
    return status();
}
