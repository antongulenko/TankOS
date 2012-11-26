
#include <kernel.h>

// This main() must be used when handling TWI request via a command-queue.
// This can be with commandQueueExecuter_loop or commandQueueExecuter_sleep.

int main() {
	loopCommandQueue();
}
