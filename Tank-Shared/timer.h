#ifndef SHARED_TIMER_H_
#define SHARED_TIMER_H_

#include <devices/timer.h>

// For timers that are used as interrupt-source rather than PWM-generation
void setTimerFrequency(Timer timer, uint16_t prescaler, uint16_t herz);

// 2 general purpose millisecond-interrupts for software.
// Interrupts can be enabled separately.
void enableMillisecondTimerInterrupt_A(); // ISR __vector_32
void enableMillisecondTimerInterrupt_B(); // ISR __vector_33

// 1 general purpose timer with flexible frequency (1000Hz by default).
// Both interrupts A and B will fire with the same frequency and can be enabled separately.
void setGenericTimerFrequency(uint16_t herz);
void enableGenericTimerInterrupt_A(); // ISR __vector_13
void enableGenericTimerInterrupt_B(); // ISR __vector_14

#endif
