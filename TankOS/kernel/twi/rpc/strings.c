
#include "strings.h"
#include <stdio.h>

// 3 place holder chars should be enough...
// TODO use safe version of sprintf.
char RpcServerStatus_string_buf1[] = "RPC server twi error (XXXXXX)";
char RpcServerStatus_string_buf2[] = "RPC server invalid status (XXXXXX)";

char *RpcServerStatus_string(RpcServerStatus server_status) {
    switch (server_status) {
        case TWI_RPC_no_error:
            return "RPC server no error";
        case TWI_RPC_previous_response_discarded:
            return "RPC server previous response discarded";
        case TWI_RPC_unknown:
            return "RPC server unknown status";
        case TWI_RPC_error_handler:
            return "RPC server handler error";
        case TWI_RPC_error_standalone_response:
            return "RPC server no request received";
        case TWI_RPC_error_missing_operation_byte:
            return "RPC server operation byte missing";
        case TWI_RPC_error_buffer_too_small:
            return "RPC server buffer too small";
        case TWI_RPC_error_unknown:
            return "RPC server unknown error";
        case TWI_RPC_error_double_start:
            return "RPC server second transaction started without ending";
        case TWI_RPC_error_standalone_end:
            return "RPC server transaction ended without starting";
        case TWI_RPC_invalid:
        case TWI_RPC_error:
        case TWI_RPC_error_driver:
            // fall through
            ;
    }
    if (server_status >= TWI_RPC_error_driver) {
        snprintf(RpcServerStatus_string_buf1, sizeof(RpcServerStatus_string_buf1),
                 "RPC server twi error (%i)", server_status - TWI_RPC_error_driver);
        return RpcServerStatus_string_buf1;
    }
    snprintf(RpcServerStatus_string_buf2, sizeof(RpcServerStatus_string_buf2),
             "RPC server invalid status (%i)", server_status);
    return RpcServerStatus_string_buf2;
}

static char RpcHandlerStatus_string_buf[] = "RPC handler error XXXXXXX";

char *RpcHandlerStatus_string(RpcHandlerStatus handler_status) {
    switch (handler_status) {
        case TWI_RPC_handler_ok:
            return "RPC handler ok";
        case TWI_RPC_handler_illegal_operation:
            return "RPC handler illegal operation";
        case TWI_RPC_handler_illegal_parameters:
            return "RPC handler illegal parameters";
        case TWI_RPC_handler_unknown:
            return "RPC handler status unknown";
        case TWI_RPC_handler_error:
            // fall through
            ;
    }
    snprintf(RpcHandlerStatus_string_buf, sizeof(RpcHandlerStatus_string_buf),
             "RPC handler error %i", handler_status - TWI_RPC_handler_error);
    return RpcHandlerStatus_string_buf;
}

char RpcClientStatus_string_buf[] = "RPC call invalid status (XXXXXX)";

char *RpcClientStatus_string(RpcClientStatus status) {
    switch (status) {
        case TWI_RPC_call_success:
            return "RPC call success";
        case TWI_RPC_call_success_oneway:
            return "RPC call success (oneway)";
        case TWI_RPC_call_error_send_buffer_too_small:
            return "RPC call error: send buffer too small";
        case TWI_RPC_call_error_driver:
            return "RPC call driver error";
        case TWI_RPC_call_error_server:
            return "RPC call server error";
        case TWI_RPC_call_error_wrong_operation_byte:
            return "RPC call error: wrong operation byte";
        case TWI_RPC_call_error_unknown:
            return "RPC call unknown error";
        case TWI_RPC_call_error:
            // fall through
            ;
    }
    snprintf(RpcClientStatus_string_buf, sizeof(RpcClientStatus_string_buf),
             "RPC call invalid status (%i)", status);
    return RpcClientStatus_string_buf;
}

char RpcClientResult_string_buf[140]; // Longest possible result should be approx. 130 chars.

char *RpcClientResult_string(RpcClientResult result) {
    char *status = RpcClientStatus_string(result.status);
    char *handler_status = RpcHandlerStatus_string(result.handler_status);
    char *server_status = RpcServerStatus_string(result.server_status);

    snprintf(RpcClientResult_string_buf, sizeof(RpcClientResult_string_buf),
             "RPC(%s, %s, %s)", status, server_status, handler_status);
    return RpcClientResult_string_buf;
}
