
// This module includes the full scheduling/process functionality.
// The millisecond-timer tick is bound to the scheduler-ISR.

#include <kernel/processes/scheduler.h>
#include <kernel/processes/process_internal.h>
#include <kernel/processes/process.h>
#include <kernel/processes/DMS/dms_internal.h>
#include <kernel/processes/RoundRobin/rr_internal.h>
#include <kernel/processes/idle/idle_internal.h>

// This is declared as weak in init.kernel.c
// This does not necessarily have to be implemented anywhere, but we implement
// before_timer here, so we have to call before_scheduler() too.
void before_scheduler();

Process schedule(BOOL fromTimer) {
	Process p = dms_schedule(fromTimer);
	if (!IsValid(p)) p = rr_schedule(fromTimer);
	if (!IsValid(p)) p = idle_schedule(fromTimer);
	return p;
}

// Will be executed right before starting timers and enabling interrupts.
// The process-modules have to be initialized as late as possible.
void before_timer() {
	rr_captureMainProcess(PrioNormal);
	init_idle_scheduler();
	before_scheduler();
}
