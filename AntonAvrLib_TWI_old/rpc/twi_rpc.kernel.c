
#include "twi_rpc.h"
#include <string.h>

// This is a separate buffer from the internal receive buffer below, 
// to avoid race conditions when a call arrives, while the parameters 
// of our own call are copied in here. Also, this allows passing twi_rpc arguments
// from the stack.
byte sendBufferData[TWI_Buffer_Size];
TWIBuffer sendBuffer = { sendBufferData, TWI_Buffer_Size };

// === The following indented functions are for Slave-operation of TWI only

#ifdef TWI_Slave
	// Reuse the internal twi-receive-buffer to also store results of the rpc-call.
	// This buffer-variable has no special associated data-array, but always uses
	// the internal buffer in twi_driver.kernel.h
	TWIBuffer receiveBuffer;

	// Must be implemented elsewhere. The result (if any) must be placed in the 
	// arguments-buffer, incl. changing the size. Therefore the pointer.
	void twi_handleRpcRequest(byte operation, TWIBuffer *arguments);

	TWIBuffer twi_handleMasterRequest() {
		// We only operate in RPC-mode, so this call always arrives
		// after the according twi_handleMasterTransmission, which
		// sets receiveBuffer to the result-value.
		return receiveBuffer;
	}

	void twi_handleMasterTransmission(TWIBuffer twi_buffer) {
		byte operation = twi_buffer.data[0];
		twi_buffer.data++; // Skip the operation-byte
		twi_buffer.size--;
		twi_handleRpcRequest(operation, &twi_buffer);
		// The buffer has been modified, store it to be returned by
		// twi_handleMasterRequest, in case the rpc-call requires a response.
		receiveBuffer = twi_buffer;
	}
#endif

// === The following functions are for Master-operation of TWI

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
