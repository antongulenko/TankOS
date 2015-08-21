
#include "scheduler.h"
#include <process/process.h>

ProcessBase __idle_process;

// 64 byte stack... as little as possible for still allowing interrupts.
#define IDLE_PROCESS_STACK 64

void init_idle_scheduler() {
	Process idle = createProcess3(ProcessGraveyard, NULL, IDLE_PROCESS_STACK);
    __idle_process = getProcessBase(idle);
}

ProcessBase idle_schedule(BOOL invokedFromTimer) {
	return __idle_process;
}
