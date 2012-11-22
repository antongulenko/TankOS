/*
 * scheduler.kernel
 *
 * Created: 09.02.2012 09:37:14
 *  Author: Anton
 */

// This module defines

#include "../../anton_std.h"
#include "scheduler.h"
#include "scheduler_internal.h"
#include "process_base.h"
#include "process_internal.h"
#include "../../misc/hardware_reset.h"
#include "../millisecond_clock.h"

// This function should be defined as weak somewhere else and called once every millisecond.
void millisecond_timer_tick() {
	// First push the current context, before any register may be modified.
	PushProcessContext()
	
	// Count up the millisecond clock.
	millisecond_clock_tick();
	
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