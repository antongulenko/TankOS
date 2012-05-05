#ifndef _SIMPLE_TIMER_KERNEL_
#define _SIMPLE_TIMER_KERNEL_

// This should be included after timer_base.kernel.h
// This does nothing but increasethe milliseconds_running value.

TIMER_TICK_ISR {
	TIMER_TICK_ACTION
}

#endif