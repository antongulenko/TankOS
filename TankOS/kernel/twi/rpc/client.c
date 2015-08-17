
#include "client.h"
#include <string.h>
#include <stdlib.h>
#include <misc/klib.h>

static TWIBuffer sendBuffer = { 0, 0 };
static uint16_t sendBufferSize;

static RpcClientResult small_buffer_error = { TWI_RPC_call_error_send_buffer_too_small, TWI_RPC_handler_unknown, TWI_RPC_invalid };
static RpcClientResult allocation_error = { TWI_RPC_call_error_allocation_failed, TWI_RPC_handler_unknown, TWI_RPC_invalid };

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

static inline RpcClientStatus finalize_status(RpcClientStatus status, RpcServerStatus server_status) {
    if (twi_error != TWI_No_Error)
        // Might override another error status, but driver error is probably the root cause.
        status =  TWI_RPC_call_error_driver;
    if (status < TWI_RPC_call_error && server_status >= TWI_RPC_error)
        // Only set server-error status it no other error is detected.
        status = TWI_RPC_call_error_server;
    return status;
}

static inline RpcClientResult status(TWIBuffer result, byte expectedOperation) {
    RpcServerStatus server_status = TWI_RPC_unknown;
    RpcClientStatus status = TWI_RPC_call_success;
    RpcHandlerStatus handler_status = TWI_RPC_handler_unknown;
    if (result.size < 3) {
        // Should not be possible, indicates a bug.
        status = TWI_RPC_call_error_unknown;
    } else {
        server_status = result.data[0];
        handler_status = result.data[1];
        byte operation;
        if (server_status >= TWI_RPC_error) {
            // In case of errors, server does not transmit the actual response data.
            operation = result.data[2];
        } else {
            operation = result.data[result.size - 1];
        }
        if (operation != expectedOperation) {
            status = TWI_RPC_call_error_wrong_operation_byte;
        }
    }
    status = finalize_status(status, server_status);
    return (RpcClientResult) { status, handler_status, server_status };
}

RpcClientResult twi_rpc_async(TWIDevice device, byte operation, TWIBuffer parameters) {
	if (!fillSendBuffer(operation, parameters)) return small_buffer_error;
	twiSend(device, sendBuffer);
    RpcClientStatus status = finalize_status(TWI_RPC_call_success_oneway, TWI_RPC_unknown);
    return (RpcClientResult) { status, TWI_RPC_handler_unknown, TWI_RPC_unknown };
}

RpcClientResult twi_rpc_void(TWIDevice device, byte operation, TWIBuffer parameters) {
	if (!fillSendBuffer(operation, parameters)) return small_buffer_error;
    byte responseData[3];
    TWIBuffer responseBuffer = { responseData, sizeof(responseData) };
    twiSendReceive(device, sendBuffer, responseBuffer);
    return status(responseBuffer, operation);
}

RpcClientResult twi_rpc(TWIDevice device, byte operation, TWIBuffer parameters, TWIBuffer resultBuffer) {
	if (!fillSendBuffer(operation, parameters)) return small_buffer_error;
    // Receive into a buffer allocated on the stack
    size_t size = resultBuffer.size + 3;
    byte *responseData = alloca(size);
    if (!responseData) {
        klog("caf\n"); // Client alloca failed
        return allocation_error;
    }
    memset(responseData, 0, size);
    TWIBuffer responseBuffer = { responseData, size };
    twiSendReceive(device, sendBuffer, responseBuffer);
    memcpy(resultBuffer.data, responseData + 2, responseBuffer.size - 3);
    return status(responseBuffer, operation);
}
