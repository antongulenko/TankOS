#ifndef SHARED_TIMER_H_
#define SHARED_TIMER_H_

#include <devices/timer.h>

// The timers provided here are set up by timer.kernel.c and should not be written.
// They are general purpose timers for software.
// ISRs can be linked to __vector_32 and __vector_33.

extern Timer millisecond_timer_A;
extern Timer millisecond_timer_B;

void enableTimerInterrupt_A();
void enableTimerInterrupt_B();

void setTimerFrequency(Timer timer, uint16_t herz);

#endif
