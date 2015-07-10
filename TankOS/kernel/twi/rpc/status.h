
#ifndef TWI_RPC_STATUS_H_
#define TWI_RPC_STATUS_H_

typedef enum {
    TWI_RPC_invalid,

    TWI_RPC_no_error = 10, // Arbitrary, non-zero
    TWI_RPC_previous_response_discarded, // Not necessarily an error. Response for previous RPC-call was not requested.
    TWI_RPC_unknown,

    TWI_RPC_error = 20, // Not used, marker value for >= comparisons

    TWI_RPC_error_standalone_response, // Response has been requested without previously transmitting parameters.
    TWI_RPC_error_missing_operation_byte, // Transmitted parameter data was empty (need at least one operation-byte).
    TWI_RPC_error_buffer_too_small,

    TWI_RPC_error_unknown,
    TWI_RPC_error_double_start, // New transmission started without ending the first one. Should never happen.
    TWI_RPC_error_standalone_end, // Transmission ended without starting one first. Should never happen.
    TWI_RPC_error_driver // More detailed error states result from TWI_RPC_error_driver + TwiError values
} RpcServerStatus;

#endif
