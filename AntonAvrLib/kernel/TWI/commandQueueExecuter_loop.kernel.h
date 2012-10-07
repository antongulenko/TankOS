
#include "commandQueueExecuter.h"
#include "twi_rpc_hash_server_commandQueue.h"

void inside_command_queue_loop() __attribute__((weak));
void inside_command_queue_loop();

void loopCommandQueue() {
	while (1) {
		// If there is nothing to execute, throw in the application-defined
		// function.
		if (!invokeCommandQueueElement())
			inside_command_queue_loop();
	}
}
