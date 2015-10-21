
// This module sets up timers.
// Two timers are provided for miscellaneous software-tasks.
// The timer 3 is used for this, the frequency is 1ms.
// Weak functions can be implemented to couple code to the timer-ISRs.

#include <platform/kernel_init.h>
#include <kernel/millisecond_clock.h>
#include <platform/Avr/m1284P/timer.h>
#include "timer.h"

Timer millisecond_timer_A;
Timer millisecond_timer_B;

static void init_tank_timer() {
	millisecond_timer_A = newTimer_m1284P(3, TIMER_A, FALSE); // Timer 3A
    millisecond_timer_B = newTimer_m1284P(3, TIMER_B, FALSE); // Timer 3B

    TCCR3A = 0; // No compare-match-output
    TCCR3B = _BV(WGM32) // Clear timer on compare match (max = OCCRA)
                         // No input-capture, noise-canceller
            | _BV(CS31); // clock-select: prescale 8
    TCCR3C = 0; // No forced output-compare

	// Both timers fire once per millisecond by default.
	setTimerFrequency(millisecond_timer_A, 1000);
	setTimerFrequency(millisecond_timer_B, 2000);
}
KERNEL_INIT(init_tank_timer)
