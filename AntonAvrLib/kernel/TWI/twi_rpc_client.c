
#include "twi_rpc_client.h"
#include <string.h>

TWIBuffer sendBuffer = { 0, 0 };

void twi_rpc_client_init(TWIBuffer parameterBuffer) {
	sendBuffer = parameterBuffer;
}

static inline void fillSendBuffer(byte operation, TWIBuffer parameters) {
	sendBuffer.data[0] = operation;
	sendBuffer.size = parameters.size + 1;
	memcpy(sendBuffer.data + 1, parameters.data, parameters.size);
}

void twi_rpc_oneway(TWIDevice device, byte operation, TWIBuffer parameters) {
	fillSendBuffer(operation, parameters);
	twiSend(device, sendBuffer);
}

void twi_rpc_pseudo_oneway(TWIDevice device, byte operation, TWIBuffer parameters) {
	fillSendBuffer(operation, parameters);
	twiSendReceive(device, sendBuffer, (TWIBuffer) { 0, 0 });
}

void twi_rpc(TWIDevice device, byte operation, TWIBuffer parameters, TWIBuffer resultBuffer) {
	fillSendBuffer(operation, parameters);
	twiSendReceive(device, sendBuffer, resultBuffer);
}
