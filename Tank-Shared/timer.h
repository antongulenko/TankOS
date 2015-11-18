#ifndef SHARED_TIMER_H_
#define SHARED_TIMER_H_

#include <devices/timer.h>

// Prescaler values must be configured by $(AVR_MCU)/timer.kernel.c
#define TIMER_PRESCALER 8

// For timers that are used as interrupt-source rather than PWM-generation
void setTimerFrequency(Timer timer, uint16_t prescaler, uint16_t herz);

// 2 general purpose millisecond-interrupts for software.
// Interrupts can be enabled separately.
void enableMillisecondTimerInterrupt_A(); // atmega1284p: __vector_32, attiny84: __vector_6
void enableMillisecondTimerInterrupt_B(); // atmega1284p: __vector_33, attiny84: __vector_7

// 1 general purpose timer with flexible frequency (1000Hz by default).
// Both interrupts A and B will fire with the same frequency and can be enabled separately.
void setGenericTimerFrequency(uint16_t herz);
void enableGenericTimerInterrupt_A(); // atmega1284p: __vector_13, attiny84: __vector_9
void enableGenericTimerInterrupt_B(); // atmega1284p: __vector_14, attiny84: __vector_10

#endif
