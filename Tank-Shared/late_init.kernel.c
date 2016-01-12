/*
 * Created: 02.05.2012 15:26:45
 *  Author: Anton
 */

#include <platform/kernel_init.h>
#include <kernel/klib.h>
#include <platform/platform_Avr/avr_atmega1284p/timer.h>
#include <platform/platform_Avr/early_init.h>
#include "timer.h"

// Hack: Reference function from millisecond_clock.c to ensure it is included and __vector_MILLISECOND_CLOCK_INTERRUPT is available.
// Necessary when USE_TWI=false and twi/services/hardware.kernel.o does not use get_milliseconds_running().
#include <kernel/millisecond_clock.h>
void __hack_help_linker__() {
	get_milliseconds_running();
}

// This function can be implemented in user code to have some initialization-code
// before the scheduler is started.
void before_scheduler() WEAK_FUNCTION;
void before_scheduler() {
}

// This is a kernel-internal function to initialize the scheduler right before
// the timers start running.
// When this function is implemented, before_timer() should be called right before
// returning.
void before_timer() WEAK_FUNCTION;
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

static void late_init_kernel() {
    configure_power_saving();
	before_timer();
    enableMillisecondTimerInterrupt_A(); // Millisecond-timer / Scheduler-timer
	boot_completed();
    klog("B\n"); // Booted
    sei();
}
KERNEL_INIT(late_init_kernel)
