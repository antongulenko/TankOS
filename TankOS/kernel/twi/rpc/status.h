
#ifndef TWI_RPC_STATUS_H_
#define TWI_RPC_STATUS_H_

typedef enum {
    TWI_RPC_invalid,
    TWI_RPC_no_error = 10, // Arbitrary, non-zero
    TWI_RPC_no_response, // Not an error-state. Last RPC-call did not involve a response.

    TWI_RPC_error_no_response_requested, // Response was not requested, even though the handling routine returned response data.
    TWI_RPC_error_standalone_response, // Response has been requested without previously transmitting parameters.
    TWI_RPC_error_missing_operation_byte, // Transmitted parameter data was empty (need at least one operation-byte).

    TWI_RPC_error_unknown,
    TWI_RPC_error_driver // More detailed error states result from TWI_RPC_error_driver + TwiError values
} RpcServerStatus;

#endif
