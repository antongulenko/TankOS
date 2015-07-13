
#ifndef TWI_RPC_STRINGS_H_
#define TWI_RPC_STRINGS_H_

#include <kernel/twi/rpc/server_status.h>
#include <kernel/twi/rpc/server_handler.h>

char *RpcServerStatus_string(RpcServerStatus server_status);

char *RpcHandlerStatus_string(RpcHandlerStatus handler_status);

#endif // TWI_RPC_STRINGS_H_
