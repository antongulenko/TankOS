/*
 * scheduler.kernel
 *
 * Created: 09.02.2012 09:37:14
 *  Author: Anton
 */ 

#ifndef _SCHEDULER_KERNEL_
#define _SCHEDULER_KERNEL_

// This should (bot does not have to) be included after
// timer_base.kernel.h

#include "../../anton_std.h"
#include "scheduler.h"
#include "scheduler_internal.h"
#include "process.h"
#include "process_internal.h"
#include "../hardware_reset.h"

// This is defined in timed_scheduler.kernel to be the ISR of the timer-interrupt.
// If not yet defined, the scheduler-ISR will just be a regular function.
#ifndef SCHEDULER_TICK_ISR_NAKED
void scheduler_tick() {
#else
SCHEDULER_TICK_ISR_NAKED {
#endif
	// First push the current context, before any register may be modified.
	PushProcessContext()
	
	// Can be defined before including this file, to include some additional action here
	#ifdef TIMER_TICK_ACTION
	TIMER_TICK_ACTION
	#endif
	
	// Place current process in the X-register, store the stack-pointer.
	asm volatile("lds r26, __current_process");
	asm volatile("lds r27, __current_process + 1");
	StoreContextStack()

	__current_process = schedule(TRUE);
	if (__current_process == InvalidProcess) {
		// This is an invalid condition. The schedule() function is required to return a valid process.
		// Force a hardware-reset using the watchdog-timer.
		// Use the idle-scheduler to have a default fallback-process.
		HARDWARE_RESET();
	}

	asm volatile("movw r26, r24"); // Place newProcess in the X-register
	RestoreContextStack()
	PopProcessContext()
	
	// Return from the interrupt, into the context of the new process.
	asm volatile("reti");
}

#endif