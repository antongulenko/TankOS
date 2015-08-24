
#include <twi/driver/driver.h>
#include "server_handler.h"
#include "server.h"
#include <string.h>

// The interface in this header is implemented by this module (included only as reference).
#include <twi/driver/slave.h>

// Stores the parameters of an rpc call.
TWIBuffer receiveBuffer;

// Used to transmit error responses.
byte errorBufferData[3];
TWIBuffer errorBuffer = { errorBufferData, sizeof(errorBufferData) };

// This stores the result of an rpc call. The memory-buffer behind this is
// the same as in receiveBuffer, the size should be different.
TWIBuffer resultBuffer = StaticEmptyBuffer;
byte lastHandledOperation = ILLEGAL_OPERATION;
RpcHandlerStatus lastHandlerStatus = TWI_RPC_handler_unknown;

RpcServerOperation rpc_server_operation = TWI_RPC_waiting;
RpcServerStatus rpc_server_status = TWI_RPC_no_error;

static void twi_driver_error(RpcServerStatus status) {
	switch (twi_error) {
		case TWI_Slave_NotEnoughDataReceived:
		case TWI_No_Error:
			rpc_server_status = status;
			break;
		default:
			rpc_server_status = TWI_RPC_error_driver + twi_error;
	}
}

static void reset_results() {
    resultBuffer = EmptyBuffer;
    lastHandledOperation = ILLEGAL_OPERATION;
    lastHandlerStatus = TWI_RPC_handler_unknown;
}

static TWIBuffer twi_masterTransmissionStarting() {
	// Client is initiating an rpc call. Receive the arguments into
	// the static receive buffer.
    // This will most likely result in TWI_Slave_NotEnoughDataReceived
    // since we don't know how much data the server wants to send.
    if (rpc_server_operation == TWI_RPC_waiting_to_respond) {
        rpc_server_status = TWI_RPC_previous_response_discarded;
    } else if (rpc_server_operation != TWI_RPC_waiting) {
        // Second transmission has been started without ending the first one. Something wrong.
        twi_driver_error(TWI_RPC_error_double_start);
    } else {
        rpc_server_status = TWI_RPC_no_error;
    }
    reset_results();
    rpc_server_operation = TWI_RPC_handling_request;
	return receiveBuffer;
}

static void twi_masterTransmissionEnded(TWIBuffer parameters) {
    reset_results();
    RpcServerOperation current_state = rpc_server_operation;
    rpc_server_operation = TWI_RPC_waiting_to_respond; // Either way, we want to respond something after this.
    if (rpc_server_status >= TWI_RPC_error) {
        // twi_masterTransmissionStarting already set an error state.
        return;
    }
    if (current_state != TWI_RPC_handling_request) {
        // Transmission ended without starting one first.
        twi_driver_error(TWI_RPC_error_standalone_end);
        return;
    }
    if (twi_error == TWI_Slave_TooMuchDataReceived) {
        rpc_server_status = TWI_RPC_error_buffer_too_small;
        return;
    }
    if (twi_error != TWI_Slave_NotEnoughDataReceived && twi_error != TWI_No_Error) {
        // Received too much data, or other twi_error.
        // The NotEnoughDataReceived state is basically the expected state, because we don't know how much the client will send.
        twi_driver_error(TWI_RPC_error_unknown);
        return;
    }
    if (parameters.size == 0) {
        rpc_server_status = TWI_RPC_error_missing_operation_byte;
        return;
    }
	byte operation = parameters.data[0];
	parameters.data++; // Skip the operation-byte
	parameters.size--;
    // TODO - at this point the handler has no way of knowing how much result-data can be placed in the buffer...
	lastHandlerStatus = twi_handleRpcRequest(operation, &parameters);
    lastHandledOperation = operation;
	resultBuffer = parameters;
}

static TWIBuffer twi_handleMasterRequest() {
    TWIBuffer result;
    if (rpc_server_operation != TWI_RPC_waiting_to_respond)
        rpc_server_status = TWI_RPC_error_standalone_response;

    if (rpc_server_status < TWI_RPC_error) {
        if (receiveBuffer.size < resultBuffer.size + 3) {
            rpc_server_status = TWI_RPC_error_buffer_too_small;
        } else if (lastHandlerStatus != TWI_RPC_handler_ok) {
            rpc_server_status = TWI_RPC_error_handler;
        } else {
            // Here we prepare the actual response data.
            // receiveBuffer and resultBuffer share the same backing memory, so use memmove.
            result = receiveBuffer;
            result.size = resultBuffer.size + 3;
            memmove((char*) result.data + 2, (char*) resultBuffer.data, resultBuffer.size);
            result.data[0] = rpc_server_status;
            result.data[1] = lastHandlerStatus;
            result.data[result.size - 1] = lastHandledOperation;
        }
    }

    if (rpc_server_status >= TWI_RPC_error) {
        result = errorBuffer;
        errorBufferData[0] = rpc_server_status;
        errorBufferData[1] = lastHandlerStatus;
        errorBufferData[2] = lastHandledOperation;
    }

    reset_results();
    rpc_server_status = TWI_RPC_no_error;
    rpc_server_operation = TWI_RPC_waiting;
	return result;
}

void twi_rpc_server_init(TWIBuffer in_out_buffer) {
    rpc_server_operation = TWI_RPC_waiting;
	receiveBuffer = in_out_buffer;
    reset_results();
	twi_init_slave_callbacks(
		twi_handleMasterRequest,
		twi_masterTransmissionStarting,
		twi_masterTransmissionEnded
	);
}
