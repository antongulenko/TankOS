
#include "millisecond_clock.h"

// Bind the millisecond clock interrupt, simply increase the milliseconds_running value.
// This cannot be linked together with processes/scheduler.kernel.c

// Will be bound by the linker to the appropriate timer-ISR.
void MILLISECOND_TIMER_INTERRUPT() __attribute__ ((interrupt));
void MILLISECOND_TIMER_INTERRUPT() {
	millisecond_clock_tick();
}
