
// This module sets up timers.
// Two timers are provided for miscellaneous software-tasks.
// The timer 3 is used for this, the frequency is 1ms.
// Weak functions can be implemented to couple code to the timer-ISRs.

#include <kernel/kernel_init.h>
#include <kernel/millisecond_clock.h>
#include <m1284P/timer.h>

TimerPair millisecond_timer;
Timer millisecond_timer_A;
Timer millisecond_timer_B;

static void init_tank_timer() {
	setWaveformGenerationMode(millisecond_timer, clear_timer_on_match);
	setTimerClockSelect(millisecond_timer, prescale_8);

	// --> 8 * 2500 = 20000 @ 20MHz
	// results in one compare-match every millisecond.
	#define MILLISECOND_TIMER_VALUE ((uint16_t) 2500)

	setTimerValue(millisecond_timer_A, MILLISECOND_TIMER_VALUE);
	setTimerValue(millisecond_timer_B, MILLISECOND_TIMER_VALUE);
}
KERNEL_INIT(init_tank_timer)
