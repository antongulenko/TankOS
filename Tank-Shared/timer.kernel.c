
// This module sets up timers.
// Two timers are provided for miscellaneous software-tasks.
// The timer 3 is used for this, the frequency is 1ms.
// Weak functions can be implemented to couple code to the timer-ISRs.

#include <platform/kernel_init.h>
#include <kernel/millisecond_clock.h>
#include <platform/Avr/m1284P/timer.h>
#include "timer.h"

static Timer millisecond_timer_A;
static Timer millisecond_timer_B;

// timer.c
extern Timer generic_timer_A;
extern Timer generic_timer_B;
extern void setTimerPairFrequency(Timer timerA, Timer timerB, uint16_t herz);

#define MILLISECOND_FREQUENCY 1000

static void init_millisecond_timers() {
    millisecond_timer_A = newTimer_m1284P(3, TIMER_A, FALSE); // Timer 3A
    millisecond_timer_B = newTimer_m1284P(3, TIMER_B, FALSE); // Timer 3B

    TCCR3A = 0; // No compare-match-output
    TCCR3B = _BV(WGM32) // Clear timer on compare match (max = OCCRA)
                         // No input-capture, noise-canceller
            | _BV(CS31); // clock-select: prescale 8
    TCCR3C = 0; // No forced output-compare

    setTimerPairFrequency(millisecond_timer_A, millisecond_timer_B, MILLISECOND_FREQUENCY);
}

static void init_generic_timers() {
    generic_timer_A = newTimer_m1284P(1, TIMER_A, FALSE); // Timer 1A
    generic_timer_B = newTimer_m1284P(1, TIMER_B, FALSE); // Timer 1B

    TCCR1A = 0; // No compare-match-output
    TCCR1B = _BV(WGM12) // Clear timer on compare match (max = OCCRA)
                         // No input-capture, noise-canceller
            | _BV(CS11); // clock-select: prescale 8
    TCCR1C = 0; // No forced output-compare

    setGenericTimerFrequency(MILLISECOND_FREQUENCY);
}

static void init_tank_timer() {
    init_millisecond_timers();
    init_generic_timers();
}
KERNEL_INIT(init_tank_timer)
