#ifndef TWI_RPC_COMMAND_QUEUE_PROTOCOL_H_
#define TWI_RPC_COMMAND_QUEUE_PROTOCOL_H_

// TWI-RPC-Calls related to server-side command queues.

enum {
	COMMAND_QUEUE_Clear = 0xD1, // () => ()
	COMMAND_QUEUE_IsFull = 0xD2, // () => BOOL
};

#endif