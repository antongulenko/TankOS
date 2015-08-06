/*
 * Created: 27.04.2012 17:35:43
 *  Author: Anton
 */

#ifndef TIMER_M1284P_H_
#define TIMER_M1284P_H_

#include <kernel/devices/timer.h>
#include "port.h"

typedef enum {
    TIMER_A = 0,
    TIMER_B = 1
} TimerPart;

Timer newTimer_m1284P(uint8_t num, TimerPart part, BOOL pwm); // num = 0..3

#endif /* TIMER_M1284P_H_ */
