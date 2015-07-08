#ifndef _KERNEL_INIT_SHARED_H_
#define _KERNEL_INIT_SHARED_H_

#include <tank_os_common.h>

#define DISABLE_TIMER0 _BV(4)
#define DISABLE_TIMER1 _BV(1)
#define DISABLE_TIMER2 _BV(2)
#define DISABLE_TIMER3 _BV(3)
#define DISABLE_AC _BV(5)
#define ENABLE_TIMER_A _BV(6)
#define ENABLE_TIMER_B _BV(7)

// This is a bitmap consisting of the defines above.
// It has to be linked to some external value.
extern uint16_t KERNEL_INIT_MAP;

#endif