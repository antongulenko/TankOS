/*
 * scheduler.kernel
 *
 * Created: 09.02.2012 09:37:14
 *  Author: Anton
 */

#include "../../tank_os_common.h"
#include "scheduler.h"
#include "scheduler_internal.h"
#include "process_base.h"
#include "process_internal.h"
#include "../../misc/hardware_reset.h"
#include "../millisecond_clock.h"

volatile BOOL yielding_quantum = FALSE;

// It's important, that this is naked! Don't let GCC push any registers.
// Will be bound by the linker to the appropriate timer-ISR.
// Naming this function __vector_* prevents a warning from gcc.
void __vector_MILLISECOND_TIMER_INTERRUPT() __attribute__ ((interrupt, naked));
void __vector_MILLISECOND_TIMER_INTERRUPT() {
	// First push the current context, before any register may be modified.
	PushProcessContext()
	
	// Notify the yield_quantum() function, that the last quantum is over.
	yielding_quantum = FALSE;
	
	// Count up the millisecond clock.
	millisecond_clock_tick();
	
	// Place current process in the X-register, store the stack-pointer.
	asm volatile("lds r26, __current_process");
	asm volatile("lds r27, __current_process + 1");
	StoreContextStack()
	
	__current_process = schedule(TRUE);
	if (!IsValid(__current_process)) {
		// This is an invalid condition. The schedule() function is required to return a valid process.
		// Force a hardware-reset using the watchdog-timer.
		// Use the idle-scheduler to have a default fallback-process so this does not happen.
		HARDWARE_RESET();
	}
	
	asm volatile("movw r26, r24"); // Place newProcess in the X-register
	RestoreContextStack()
	PopProcessContext()
	
	// Return from the interrupt, into the context of the new process.
	asm volatile("reti");
}
