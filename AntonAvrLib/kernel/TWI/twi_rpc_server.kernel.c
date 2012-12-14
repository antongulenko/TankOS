
#include "twi_driver.h"
#include "twi_rpc_server_handler.h"
#include "twi_rpc_server.h"

// The interface in this header is implemented by this module.
#include "twi_driver_slave_handler.h"

// Stores the parameters of an rpc call.
TWIBuffer receiveBuffer;

// This stores the result of an rpc call. The memory-buffer behind this is
// the same as in receiveBuffer, the size should be different.
TWIBuffer resultBuffer = EmptyBuffer;

void twi_rpc_server_init(TWIBuffer in_out_buffer) {
	receiveBuffer = in_out_buffer;
}

TWIBuffer twi_handleMasterRequest() {
	// We only operate in RPC-mode, so this call always arrives
	// after the according twi_handleMasterTransmission, which
	// sets resultBuffer to the result-value.
	TWIBuffer result = resultBuffer;
	resultBuffer = EmptyBuffer; // Avoid accidentally reusing this.
	return result;
}

TWIBuffer twi_masterTransmissionStarting() {
	// Client is initiating an rpc call. Receive the arguments into
	// the static buffer.
	return receiveBuffer;
}

void twi_masterTransmissionEnded(TWIBuffer parameters) {
	byte operation = parameters.data[0];
	parameters.data++; // Skip the operation-byte
	parameters.size--;
	twi_handleRpcRequest(operation, &parameters);
	// The buffer has been modified, store it to be returned by
	// twi_handleMasterRequest, in case the rpc-call requires a response.
	resultBuffer = parameters;
}
