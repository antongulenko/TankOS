
#ifndef TESTRPCSERVER_H_
#define TESTRPCSERVER_H_

#include <kernel/twi/rpc/server_handler_functions.h>
#include "rpc_client.h"

const extern TestResStruct defaultResult;
extern TestArgStruct receivedArgs;

extern BOOL received_normal, received_void, received_noargs, received_notify;

void init_test_rpc_server();

#endif // TESTRPCSERVER_H_
