#include <platform/kernel_init.h>
#include <kernel/millisecond_clock.h>
#include "timer.h"

// timer.c
extern Timer generic_timer_A;
extern Timer generic_timer_B;
extern Timer millisecond_timer_A;
extern Timer millisecond_timer_B;
extern void setTimerPairFrequency(Timer timerA, Timer timerB, uint16_t herz);

#define MILLISECOND_FREQUENCY 1000

static void init_millisecond_timers() {
    millisecond_timer_A = newTimer((uint8_t*) &OCR1A, TimerResolution16); // Timer 1A
    millisecond_timer_B = newTimer((uint8_t*) &OCR1B, TimerResolution16); // Timer 1B

    TCCR1A = 0; // No compare-match-output, Clear timer on compare match (max = OCCR0A)
    TCCR1B = _BV(WGM12) | _BV(CS11); // clock-select: prescale 8
    TCCR1C = 0; // No forced output-compare

    setTimerPairFrequency(millisecond_timer_A, millisecond_timer_B, MILLISECOND_FREQUENCY);
}

static void init_generic_timers() {
    generic_timer_A = newTimer((uint8_t*) &OCR0A, TimerResolution8); // Timer 0A
    generic_timer_B = newTimer((uint8_t*) &OCR0B, TimerResolution8); // Timer 0B

    TCCR0A = _BV(WGM01); // No compare-match-output, Clear timer on compare match (max = OCCR1A)
    TCCR0B = _BV(CS01); // clock-select: prescale 8

    setTimerPairFrequency(generic_timer_A, generic_timer_B, MILLISECOND_FREQUENCY);
}

static void init_tank_timer() {
    init_generic_timers();
    init_millisecond_timers();
}
KERNEL_INIT(init_tank_timer)

void enableMillisecondTimerInterrupt_A() {
    TIMSK1 |= _BV(OCIE1A);
}

void enableMillisecondTimerInterrupt_B() {
    TIMSK1 |= _BV(OCIE1B);
}

void enableGenericTimerInterrupt_A() {
    TIMSK0 |= _BV(OCIE0A);
}

void enableGenericTimerInterrupt_B() {
    TIMSK0 |= _BV(OCIE0B);
}
