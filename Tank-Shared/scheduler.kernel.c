
// This module includes the full scheduling/process functionality.
// The millisecond-timer tick is bound to the scheduler-ISR.

#include <kernel/processes/scheduler.h>
#include <kernel/processes/process_internal.h>
#include <kernel/processes/process.h>
#include <kernel/processes/DMS/dms_internal.h>
#include <kernel/processes/RoundRobin/rr_internal.h>
#include <kernel/processes/idle/idle_internal.h>

Process schedule(BOOL fromTimer) {
	Process p = dms_schedule(fromTimer);
	if (!p) p = rr_schedule(fromTimer);
	if (!p) p = idle_schedule(fromTimer);
	return p;
}

// This function can be implemented in user code to have some initialization-code
// before processes start being scheduled. No concurrency here, yet.
// All process-modules are already initialized, though.
void before_scheduler() __attribute__((weak));
void before_scheduler() {}

// Will be executed right before starting timers and enabling interrupts.
// The process-modules have to be initialized as late as possible.
void before_timer() {
	rr_captureMainProcess(PrioNormal);
	init_idle_scheduler();
	before_scheduler();
}
