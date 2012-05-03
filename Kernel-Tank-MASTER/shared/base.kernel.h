/*
 * base.kernel
 *
 * Created: 02.05.2012 15:26:45
 *  Author: Anton
 */ 

#ifndef _BASE_KERNEL_
#define _BASE_KERNEL_

#include "scheduler.kernel.h"

// This function can be implemented in user code to have some initialization-code before the timer starts running.
// This kernel-module should be included after all process-related modules.
void before_scheduler() __attribute__((weak));
void before_scheduler() {}

// Regular header-files
#include "../kernel.h"

Process schedule(BOOL fromTimer) {
	Process p = dms_schedule(fromTimer);
	if (!p) p = rr_schedule(fromTimer);
	if (!p) p = idle_schedule(fromTimer);
	return p;
}

// TODO put some common init-parts into the AntonLib-kernel
void init_kernel() {
	// Power saving settings
	ACSR |= _BV(ACD); // Turn off Analog Comparator - not needed
	PRR0 |= _BV(PRTIM0) | _BV(PRTIM2); // Turn off unused timers
	
	// Watchdog-timer
	// Enabled through the WDTON-fuse-bit. Explicitely disable here.
	// Configure the prescaler -- WDT system-reset after 0,5 s without wdt-instruction.
	WDTCSR = _BV(WDCE);
	// WDP3:0 = 0101 - 0,5s timeout
	WDTCSR |= // _BV(WDP3) |
			_BV(WDP2) |
			// _BV(WDP1) |
			_BV(WDP0);
	
	// BOD - TODO configure?
	
	// Final initialization-sequence
	init_process(); // AFTER other modules modified __default_stack_size and __main_process_additional_memory
	rr_captureMainProcess(PrioNormal);
	before_scheduler(); // AFTER all other initialization and BEFORE starting the scheduler
	start_scheduler();
}
KERNEL_INIT(init_kernel)

#endif