
#include "millisecond_clock.h"

// This implements the function millisecond_timer_tick, which should be
// defined as weak somewhere else and called once every millisecond.
// This does nothing but increase the milliseconds_running value.

// This cannot be linked together with processes/scheduler.kernel.c

void millisecond_timer_tick() {
	millisecond_clock_tick();
}
