/*
 * init.kernel
 *
 * Created: 02.05.2012 15:26:45
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include <kernel/devices/timer_m1284P.h>
#include "timer.h"

// This function can be implemented in user code to have some initialization-code 
// before the timer starts running.
void before_timer() __attribute__((weak));
void before_timer() {}

// Can be defined by application, invoked after everything is set up, right before main()
void kernel_initialized() __attribute__((weak));
void kernel_initialized() {}

// TODO put some common init-parts into the AntonLib-kernel
void init_kernel() {
	// Power saving settings
	ACSR |= _BV(ACD); // Turn off Analog Comparator - not needed
	// PRR0 |= _BV(PRTIM0) | _BV(PRTIM2); // Turn off unused timers
	
	// WDT-configuration -- resets after 4s (alt.: 8S, 2S, 1S, 500MS, ...)
	// wdt_enable(WDTO_4S);
	
	// BOD - TODO configure?
	
	// Final initialization-sequence.
	// AFTER other modules modified __default_stack_size and __main_process_additional_memory
	before_timer(); // AFTER all other initialization and BEFORE starting the timers/scheduler
	
	#ifdef TIMER_INTERRUPT_A
	enableTimerInterrupt(millisecond_timer_A);
	#endif
	#ifdef TIMER_INTERRUPT_B
	enableTimerInterrupt(millisecond_timer_B);
	#endif
	
	sei();
	kernel_initialized();
	
	// This seems necessary, the kernel_initialized function above
	// resets the global interrupt flag in the simulator for whatever reason.
	sei();
}
KERNEL_INIT(init_kernel)
