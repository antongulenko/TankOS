/*
 * Created: 02.05.2012 15:26:45
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include <kernel/devices/timer_m1284P.h>
#include <kernel/early_init.h>
#include "timer.h"
#include "late_init.h"

// This function can be implemented in user code to have some initialization-code
// before the scheduler is started.
void before_scheduler() __attribute__((weak));
void before_scheduler() {
}

// This is a kernel-internal function to initialize the scheduler right before
// the timers start running.
// When this function is implemented, before_timer() should be called right before
// returning.
void before_timer() __attribute__((weak));
void before_timer() {
	before_scheduler();
}

static __attribute__ ((noinline)) void late_init_kernel() {
	// Power saving settings

	// Analog Comparator
	if (KERNEL_INIT_MAP & DISABLE_AC)
		ACSR |= _BV(ACD);

	// Timers
	if (KERNEL_INIT_MAP & DISABLE_TIMER0)
		PRR0 |= _BV(PRTIM0);
	if (KERNEL_INIT_MAP & DISABLE_TIMER1)
		PRR0 |= _BV(PRTIM1);
	if (KERNEL_INIT_MAP & DISABLE_TIMER2)
		PRR0 |= _BV(PRTIM2);
	if (KERNEL_INIT_MAP & DISABLE_TIMER3)
		PRR0 |= _BV(PRTIM3);

	// TODO add more power saving settings, check whether these are correct.

	// WDT-configuration -- resets after 4s (alt.: 8S, 2S, 1S, 500MS, ...)
	// wdt_enable(WDTO_4S);

	// BOD - TODO configure?

	// Final initialization-sequence.
	// AFTER other modules modified __default_stack_size and __main_process_additional_memory
	before_timer(); // AFTER all other initialization and BEFORE starting the timers/scheduler

	if (KERNEL_INIT_MAP & ENABLE_TIMER_A)
		enableTimerInterrupt(millisecond_timer_A);
	if (KERNEL_INIT_MAP & ENABLE_TIMER_B)
		enableTimerInterrupt(millisecond_timer_B);

	initialization_completed();
    sei();
}
KERNEL_INIT(late_init_kernel)
