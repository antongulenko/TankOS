/*
 * timer.h
 *
 * Created: 23.04.2012 16:46:50
 *  Author: Anton
 */

// Uncovered timer/counter features:
// - Force output compare (all timers)
// - Input Capture (timer 1 and 3)
// - Asynchronous status register (timer 2)

#ifndef _TIMER_H_
#define _TIMER_H_

#include <tank_os_common.h>
#include "port.h"

typedef enum {
    TimerResolution8, // 8 bit timer, trimmed
    TimerResolution9, // 16 bit timer, trimmed
    TimerResolution10, // 16 bit timer, trimmed
    TimerResolution16, // 16 bit timer
} TimerType;

DEFINE_HANDLE(Timer);
#define PinPwmOutput 6

Timer newTimer(volatile uint8_t *outputCompareRegister, TimerType type);
Timer newPwmTimer(volatile uint8_t *outputCompareRegister, TimerType type, Pin outputComparePin);
Timer destroyTimer(Timer timer);
BOOL timerValid(Timer timer);

// For 8-bit timers the LOW 8 bit are not used (or returned as zero)
void setTimerValue(Timer timer, uint16_t value);
uint16_t getTimerValue(Timer timer);

BOOL isPwmTimer(Timer timer);
Pin getTimerOutputPin(Timer timer); // Returns Invalid for non-pwm timers

#endif
