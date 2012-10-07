#ifndef TWI_RPC_HASH_SERVER_COMMAND_QUEUE_H_
#define TWI_RPC_HASH_SERVER_COMMAND_QUEUE_H_

#include "../../anton_std.h"

// Returns TRUE, if a function has been executed.
// Returns FALSE, if the queue was empty and nothing was done.
// It is ok to invoke this, even though FALSE was returned.
BOOL invokeCommandQueueElement();

#endif