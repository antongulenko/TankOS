
#include "millisecond_clock.h"

// This implements the function millisecond_timer_tick, which should be
// defined as weak somewhere else.
// This does nothing but increase the milliseconds_running value.

void millisecond_timer_tick() {
	millisecond_clock_tick();
}
