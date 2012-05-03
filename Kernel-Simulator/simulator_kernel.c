/*
 * simulator_kernel.c
 *
 * Created: 03.05.2012 10:35:58
 *  Author: Anton
 */ 

// This kernel includes only the scheduler- and initialization-part. No devices etc.

#include <kernel/devices/timer_m1284P.kernel.h>
#include <kernel/processes/process_ext.kernel.h>
#include <kernel/processes/DMS/dms_scheduler.kernel.h>
#include <kernel/processes/RoundRobin/rr_scheduler.kernel.h>
#include <kernel/processes/idle/idle_scheduler.kernel.h>

#define CLOCKISR TIMER3_COMPA_vect
#include <kernel/processes/timed_scheduler.kernel.h>

void init_scheduler() {
	PTimerConfig timerConf = &Timer3;
	PTimer timer = &Timer3A;
	
	setWaveformGenerationMode(timerConf, clear_timer_on_match);
	setTimerCompareValue(timer, 250); // THIS is the main difference between this kernel and the others
	setTimerClockSelect(timerConf, prescale_8);
	// --> 8 * 2500 = 20000, resulting in one compare-match every millisecond
}
KERNEL_INIT(init_scheduler)

void start_scheduler() {
	// Enabling the interrupt will start invoking the scheduler.
	enableTimerInterrupt(&Timer3A);
	sei();
}

// This function can be implemented in user code to have some initialization-code before the timer starts running.
// This kernel-module should be included after all process-related modules.
void before_scheduler() __attribute__((weak));
void before_scheduler() {}

// Regular header-files
#include "kernel.h"

Process schedule(BOOL fromTimer) {
	Process p = dms_schedule(fromTimer);
	if (!p) p = rr_schedule(fromTimer);
	if (!p) p = idle_schedule(fromTimer);
	return p;
}

void init_kernel() {
	// Final initialization-sequence
	init_process(); // AFTER other modules modified __default_stack_size and __main_process_additional_memory
	rr_captureMainProcess(PrioNormal);
	before_scheduler(); // AFTER all other initialization and BEFORE starting the scheduler
	start_scheduler();
}
KERNEL_INIT(init_kernel)
