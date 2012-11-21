#ifndef SHARED_TIMER_H_
#define SHARED_TIMER_H_

// The timers provided here are set up by timer.kernel.c and should not be written.
// They are general purpose timers for software.
// The functions timer_tick_A() and timer_tick_B() can be implemented to bind
// functions to the timers.

extern PTimerPair millisecond_timer;
extern PTimer millisecond_timer_A;
extern PTimer millisecond_timer_B;

#endif