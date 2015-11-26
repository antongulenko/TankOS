/*
 * Created: 26.04.2012 17:06:02
 *  Author: Anton
 */

#include <tank_os_common.h>
#include <platform/platform_Avr/idle.h>
#include <platform/platform_Avr/hardware_reset.h>
#include <kernel/millisecond_clock.h>
#include "scheduler.h"

volatile BOOL yielding_quantum = FALSE;

// This function does not need to be naked or anything, because the process that
// invoked it has saved all its registers, that are important. As this function
// also does not take any arguments, nothing can go wrong here.
// Contrary to scheduler_interrupt, this does not trigger a reset, if schedule
// does not return a valid Process.
void schedule_next() {
	ProcessBase next;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		next = schedule(FALSE);
	}
	// This is actually an invalid condition, but no need for a hardware reset here.
	if (!IsValid(next)) return;
	switchProcessBase(next); // Will not return here until this process is scheduled again.
}

void yield_quantum() {
	yielding_quantum = TRUE;
	while (yielding_quantum)
		processor_idle();
}

static inline void inline_scheduler_interrupt() {
    millisecond_clock_tick();
    yielding_quantum = FALSE;
    ProcessBase nextProcess = schedule(TRUE);
	if (!IsValid(nextProcess)) {
		// This is an invalid condition. The schedule() function is required to return a valid process.
		// Use the idle-scheduler to have a default fallback-process so this does not happen.
		HARDWARE_RESET();
        return;
	}
    switchProcessBase(nextProcess);
}

void scheduler_interrupt() {
	inline_scheduler_interrupt();
}

void __vector_SCHEDULER_INTERRUPT() INTERRUPT_FUNCTION;
void __vector_SCHEDULER_INTERRUPT() {
    inline_scheduler_interrupt();
}
