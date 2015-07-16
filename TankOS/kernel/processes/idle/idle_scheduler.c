
#include "idle_internal.h"
#include <kernel/processes/process_internal.h>

Process __idle_process;

void init_idle_scheduler() {
	// 64 byte stack... as little as possible for still allowing interrupts.
	__idle_process = createProcess3(ProcessGraveyard, NULL, 64, 0);
}

Process idle_schedule(BOOL invokedFromTimer) {
	return __idle_process;
}
