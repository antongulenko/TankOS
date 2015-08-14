
#include "millisecond_clock.h"

// Bind the millisecond clock interrupt, simply increase the milliseconds_running value.
// This cannot be linked together with kernel/processes/scheduler_interrupt.kernel.c

// Will be bound by the linker to the appropriate timer-ISR.
// Naming this function __vector_* prevents a warning from gcc.
void __vector_MILLISECOND_TIMER_INTERRUPT() INTERRUPT_FUNCTION;
void __vector_MILLISECOND_TIMER_INTERRUPT() {
	millisecond_clock_tick();
}
