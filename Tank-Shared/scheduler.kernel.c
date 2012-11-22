
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

// Will be executed right before starting timers and enabling interrupts.
void before_timer() {
	init_process();
	init_idle_scheduler();
	rr_captureMainProcess(PrioNormal);
}
