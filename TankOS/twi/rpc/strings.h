
#ifndef TWI_RPC_STRINGS_H_
#define TWI_RPC_STRINGS_H_

#include <twi/rpc/server_status.h>
#include <twi/rpc/server_handler.h>
#include <twi/rpc/client.h>

char *RpcServerStatus_string(RpcServerStatus server_status);

char *RpcHandlerStatus_string(RpcHandlerStatus handler_status);

char *RpcClientStatus_string(RpcClientStatus status);

char *RpcClientResult_string(RpcClientResult result);

#endif // TWI_RPC_STRINGS_H_
