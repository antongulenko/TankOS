#ifndef _IDLE_SCHEDULER_KERNEL_
#define _IDLE_SCHEDULER_KERNEL_

#include "../process.h"
#include "../process_internal.h"
#include "../../kernel_init.h"

#ifndef _PROCESS_KERNEL_
#error This scheduler-kernel-module requires the Process module to be included!
#endif

Process __idle_process;

void init_idle_scheduler() {
	// 64 byte stack... as little as possible for still allowing interrupts.
	__idle_process = createProcess3(ProcessGraveyard, NULL, 64, 0);
}
KERNEL_INIT(init_idle_scheduler)

Process idle_schedule(BOOL invokedFromTimer) {
	return __idle_process;
}

#endif