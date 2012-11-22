
#include "millisecond_clock.h"

// Bind the millisecond clock interrupt, simply increase the milliseconds_running value.
// This cannot be linked together with processes/scheduler.kernel.c

ISR(MILLISECOND_TIMER_INTERRUPT) {
	millisecond_clock_tick();
}
