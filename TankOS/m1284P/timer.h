/*
 * Created: 27.04.2012 17:35:43
 *  Author: Anton
 */

#ifndef TIMER_M1284P_H_
#define TIMER_M1284P_H_

#include <kernel/devices/timer.h>
#include "port.h"

DEFINE_TIMER_PAIR(Timer0)
DEFINE_TIMER_PAIR(Timer1)
DEFINE_TIMER_PAIR(Timer2)
DEFINE_TIMER_PAIR(Timer3)

DEFINE_TIMER(Timer0A)
DEFINE_TIMER(Timer0B)
DEFINE_TIMER(Timer1A)
DEFINE_TIMER(Timer1B)
DEFINE_TIMER(Timer2A)
DEFINE_TIMER(Timer2B)
DEFINE_TIMER(Timer3A)
DEFINE_TIMER(Timer3B)

#endif /* TIMER_M1284P_H_ */
