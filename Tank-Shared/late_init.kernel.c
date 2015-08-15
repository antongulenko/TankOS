/*
 * Created: 02.05.2012 15:26:45
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include <m1284P/timer.h>
#include <kernel/early_init.h>
#include "timer.h"

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

static void configure_power_saving() {
	// === Disable Analog Comparator
    ACSR |= _BV(ACD);

	// === Disable Timers
    // PRR0 |= _BV(PRTIM0);
    // PRR0 |= _BV(PRTIM1);
    // PRR0 |= _BV(PRTIM2);
    // PRR0 |= _BV(PRTIM3);

	// TODO add more power saving settings, check whether these are correct.

	// WDT-configuration -- resets after 4s (alt.: 8S, 2S, 1S, 500MS, ...)
	// wdt_enable(WDTO_4S);

	// TODO configure BOD?
}

static void enable_timer_interrupts() {
    // TIMSK0 |= _BV(OCIE0A);
    // TIMSK0 |= _BV(OCIE0B);
    // TIMSK1 |= _BV(OCIE1A);
    // TIMSK1 |= _BV(OCIE1B);
    // TIMSK2 |= _BV(OCIE2A);
    // TIMSK2 |= _BV(OCIE2B);
    TIMSK3 |= _BV(OCIE3A);
    TIMSK3 |= _BV(OCIE3B);
}

static void late_init_kernel() {
    configure_power_saving();
	before_timer();
    enable_timer_interrupts();
	boot_completed();
    sei();
}
KERNEL_INIT(late_init_kernel)
