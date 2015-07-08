
#include "command_queue_executor.h"
#include "server_command_queue.h"
#include <misc/idle.h>

// inside_command_queue_loop is not available here, like in the loop-
// version, since we idle all the time. Must use Pin-change-interrupts
// to read button!

void loopCommandQueue() {
	while (1) {
		if (!invokeCommandQueueElement())
			// Will wake up from TWI-interrupt and check, whether
			// there are new commands available.
			processor_idle();
	}
}
