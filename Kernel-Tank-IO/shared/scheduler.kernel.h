#ifndef _SCHEDULER_KERNEL_KERNEL_
#define _SCHEDULER_KERNEL_KERNEL_

// This module includes the full scheduling/process functionality.
// The millisecond-timer tick is bound to the scheduler-ISR.

#include <kernel/processes/scheduler.kernel.h>

#include <kernel/processes/process_ext.kernel.h>
#include <kernel/processes/DMS/dms_scheduler.kernel.h>
#include <kernel/processes/RoundRobin/rr_scheduler.kernel.h>
#include <kernel/processes/idle/idle_scheduler.kernel.h>

Process schedule(BOOL fromTimer) {
	Process p = dms_schedule(fromTimer);
	if (!p) p = rr_schedule(fromTimer);
	if (!p) p = idle_schedule(fromTimer);
	return p;
}

// Will be included right before starting the timer.
#define INITIALIZE_SCHEDULER			\
	init_process();						\
	rr_captureMainProcess(PrioNormal);

#endif