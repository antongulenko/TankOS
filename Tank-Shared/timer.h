#ifndef SHARED_TIMER_H_
#define SHARED_TIMER_H_

// The timers provided here are set up by timer.kernel.c and should not be written.
// They are general purpose timers for software.
// The interrupt-ISRs (and what timers are used for this) are defined over preprocessor
// symbols passed from command line.

extern TimerPair millisecond_timer;
extern Timer millisecond_timer_A;
extern Timer millisecond_timer_B;

#endif