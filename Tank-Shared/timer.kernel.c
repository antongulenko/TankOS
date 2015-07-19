
// This module sets up timers.
// Two timers are provided for miscellaneous software-tasks.
// The timer 3 is used for this, the frequency is 1ms.
// Weak functions can be implemented to couple code to the timer-ISRs.

#include <kernel/kernel_init.h>
#include <kernel/millisecond_clock.h>
#include <kernel/devices/timer_m1284P.h>

PTimerPair millisecond_timer;
PTimer millisecond_timer_A;
PTimer millisecond_timer_B;

static __attribute__ ((noinline)) void init_tank_timer() {
	setWaveformGenerationMode(millisecond_timer, clear_timer_on_match);
	setTimerClockSelect(millisecond_timer, prescale_8);

	// --> 8 * 2500 = 20000 @ 20MHz
	// results in one compare-match every millisecond.
	#define MILLISECOND_TIMER_VALUE ((uint16_t) 2500)

	setTimerCompareValue(millisecond_timer_A, MILLISECOND_TIMER_VALUE);
	setTimerCompareValue(millisecond_timer_B, MILLISECOND_TIMER_VALUE);
}
KERNEL_INIT(init_tank_timer)
