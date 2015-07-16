/*
 * Created: 26.04.2012 17:06:02
 *  Author: Anton
 */

#include <tank_os_common.h>
#include <misc/idle.h>
#include "scheduler.h"
#include "scheduler_internal.h"

// This function does not need to be naked or anything, because the process that
// invoked it has saved all its registers, that are important. As this function
// also does not take any arguments, nothing can go wrong here.
// Contrary to the scheduler-timer-isr, this does not trigger a reset, if schedule
// does not return a valid Process.
void schedule_next() {
	Process next;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		next = schedule(FALSE);
	}
	// This is actually an invalid condition, but no need for a hardware reset here.
	if (IsValid(next)) return;
	switchProcess(next); // Will not return here until this process is scheduled again.
}

void yield_quantum() {
	yielding_quantum = TRUE;
	while (yielding_quantum)
		processor_idle();
}
