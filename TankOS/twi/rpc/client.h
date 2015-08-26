#ifndef TWI_RPC_H_
#define TWI_RPC_H_

#include <platform/twi/master.h>
#include "server_handler.h"
#include "server_status.h"

typedef enum {
    TWI_RPC_call_success,
    TWI_RPC_call_success_oneway, // oneway: no server-response, validation checks.

    TWI_RPC_call_error, // Not used, marker value for >= comparisons
    TWI_RPC_call_error_send_buffer_too_small,
    TWI_RPC_call_error_allocation_failed,
    TWI_RPC_call_error_driver,
    TWI_RPC_call_error_server, // Indicates to check server_status
    TWI_RPC_call_error_wrong_operation_byte, // Failed sanity check!
    TWI_RPC_call_error_unknown
} RpcClientStatus;

typedef struct RpcClientResult {
    RpcClientStatus status;
    RpcHandlerStatus handler_status;
    RpcServerStatus server_status;
} RpcClientResult;

// The contents of the parameters-buffer will be copied into a dedicated buffer
// before sending the data. This way, the data can (and should) passed into here
// from the stack. The resultBuffer will be filled asynchronosouly should be allocated on the heap.
RpcClientResult twi_rpc(TWIDevice device, byte operation, TWIBuffer parameters, TWIBuffer resultBuffer);

// Empty results will be received, in order to receive the server status and sanity check data.
// This way the server handler will be executed synchronously.
RpcClientResult twi_rpc_void(TWIDevice device, byte operation, TWIBuffer parameters);

// No results will be received after transmitting the parameters. No server/handler status will be received,
// the handler will run asynchronously.
RpcClientResult twi_rpc_async(TWIDevice device, byte operation, TWIBuffer parameters);

// parameterBuffer is the buffer mentioned in the comment above twi_rpc.
// It must be big enough to fit all parameters passed to functions in this module,
// plus one byte to identify the operation.
void twi_rpc_client_init(TWIBuffer parameterBuffer);

#endif
