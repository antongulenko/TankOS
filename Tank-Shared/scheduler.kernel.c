
// This module includes the full scheduling/process functionality.
// The millisecond-timer tick is bound to the scheduler-ISR.

#include <process/scheduler.h>
#include <process/process.h>
#include <process/DMS/scheduler.h>
#include <process/RoundRobin/scheduler.h>
#include <process/idle/scheduler.h>

// This is declared as weak in init.kernel.c
// This does not necessarily have to be implemented anywhere, but we implement
// before_timer here, so we have to call before_scheduler() too.
void before_scheduler();

ProcessBase schedule(BOOL fromTimer) {
	ProcessBase p = dms_schedule(fromTimer);
	if (!IsValid(p)) p = rr_schedule(fromTimer);
	if (!IsValid(p)) p = idle_schedule(fromTimer);
	return p;
}

// Will be executed right before starting timers and enabling interrupts.
// The process-modules have to be initialized as late as possible.
void before_timer() {
    init_idle_scheduler();
	init_round_robin_scheduler(PrioNormal);
    rr_captureMainThread(PrioNormal);
	before_scheduler();
}
