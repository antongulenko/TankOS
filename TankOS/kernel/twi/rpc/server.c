
#include <kernel/twi/driver/driver.h>
#include "server_handler.h"
#include "server.h"
#include <string.h>

// The interface in this header is implemented by this module (included only as reference).
#include <kernel/twi/driver/slave.h>

// Stores the parameters of an rpc call.
TWIBuffer receiveBuffer;

// This stores the result of an rpc call. The memory-buffer behind this is
// the same as in receiveBuffer, the size should be different.
TWIBuffer resultBuffer = StaticEmptyBuffer;
byte lastHandledOperation = 0;

RpcServerOperation rpc_server_state = TWI_RPC_waiting;
RpcServerStatus rpc_server_error = TWI_RPC_no_error;

static void twi_driver_error() {
    // This can only happen if something is wrong with the I2C bus.
    rpc_server_error = twi_error == TWI_No_Error ? TWI_RPC_error_unknown : TWI_RPC_error_driver;
}

static void reset_results() {
    resultBuffer = EmptyBuffer;
    lastHandledOperation = 0;
}

static byte response_code() {
    if (rpc_server_error == TWI_RPC_error_driver) {
        // Encode the twi_error into the response code.
        return TWI_RPC_error_driver + twi_error;
    }
    return (byte) rpc_server_error;
}

static TWIBuffer twi_masterTransmissionStarting() {
	// Client is initiating an rpc call. Receive the arguments into
	// the static receive buffer.
    // This will most likely result in TWI_Slave_NotEnoughDataReceived
    // since we don't know how much data the server wants to send.
    if (rpc_server_state == TWI_RPC_waiting_for_response) {
        // The master did not request any response data even though the handling
        // routine returned some data.
        rpc_server_error = TWI_RPC_error_no_response_requested;
    } else if (rpc_server_state != TWI_RPC_waiting) {
        twi_driver_error();
    } else {
        rpc_server_error = TWI_RPC_no_error;
    }
    reset_results();
    rpc_server_state = TWI_RPC_handling_request;
	return receiveBuffer;
}

static void twi_masterTransmissionEnded(TWIBuffer parameters) {
    reset_results();
    if (rpc_server_state != TWI_RPC_handling_request) {
        twi_driver_error();
        rpc_server_state = TWI_RPC_waiting;
        return;
    }
    if (parameters.size == 0) {
        rpc_server_error = TWI_RPC_error_missing_operation_byte;
        rpc_server_state = TWI_RPC_waiting;
        return;
    }
	byte operation = parameters.data[0];
	parameters.data++; // Skip the operation-byte
	parameters.size--;
	twi_handleRpcRequest(operation, &parameters);
	// The buffer has been modified, store it to be returned by twi_handleMasterRequest
	resultBuffer = parameters;
    lastHandledOperation = operation;
    rpc_server_state = TWI_RPC_waiting_for_response;
}

static TWIBuffer twi_handleMasterRequest() {
    TWIBuffer result;
    if (rpc_server_state != TWI_RPC_waiting_for_response) {
        rpc_server_error = TWI_RPC_error_standalone_response;
        result = receiveBuffer; // Abusing this here.
        result.size = 0;
    } else {
        // TODO this memmove is potentially dangerous if the buffer is too small.
        // TODO check and handle the buffer size in general.
        result = resultBuffer;
        memmove((char*) result.data + 2, (char*) result.data, (size_t) result.size);
        result.size++;
        result.data[1] = lastHandledOperation;
    }
    reset_results();
    result.size++;
    result.data[0] = response_code();
    rpc_server_error = TWI_RPC_no_error;
    rpc_server_state = TWI_RPC_waiting;
	return result;
}

void twi_rpc_server_init(TWIBuffer in_out_buffer) {
	receiveBuffer = in_out_buffer;
    reset_results();
	twi_init_slave_callbacks(
		twi_handleMasterRequest,
		twi_masterTransmissionStarting,
		twi_masterTransmissionEnded
	);
}
