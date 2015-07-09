
#include "command_queue_executor.h"
#include "server_command_queue.h"

// Application can implement inside_command_queue_loop
// for additional non TWI-related logic.
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