#ifndef _TIMER_KERNEL_KERNEL_
#define _TIMER_KERNEL_KERNEL_

// This module sets up a timer and defines CLOCKISR.
// No service routine is bound to that timer here.

#include <kernel/devices/timer_m1284P.kernel.h>

#define CLOCKISR TIMER3_COMPA_vect

void init_timer() {
	PTimerConfig timerConf = &Timer3;
	PTimer timer = &Timer3A;
	
	setWaveformGenerationMode(timerConf, clear_timer_on_match);
	setTimerCompareValue(timer, 2500);
	setTimerClockSelect(timerConf, prescale_8);
	// --> 8 * 2500 = 20000, resulting in one compare-match every millisecond
}
KERNEL_INIT(init_timer)

void start_timer() {
	// Enabling the interrupt will start invoking the scheduler.
	enableTimerInterrupt(&Timer3A);
	sei();
}

#include <kernel/timer_base.kernel.h>

#endif