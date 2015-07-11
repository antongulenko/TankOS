#include "server_handler.h"
#include <stdio.h>

char string_buf[] = "RPC handler error XXXXXXX"; // 3 place holder chars should be enough.

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
    }
    sprintf(string_buf, "RPC handler error %i", handler_status - TWI_RPC_handler_error);
    return string_buf;
}
