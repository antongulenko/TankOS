
#include "millisecond_clock.h"

uint32_t volatile milliseconds_running = 0;

uint32_t get_milliseconds_running() {
	uint32_t result;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		result = milliseconds_running;
	}
	return result;
}

// This should be invoked once per millisecond from a timer ISR.
// Make sure, that the milliseconds-number is updated in the timer-routine.
static inline void inlined_millisecond_clock_tick() {
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		milliseconds_running++;
	}
}

void millisecond_clock_tick() {
	inlined_millisecond_clock_tick();
}

void wait_milliseconds(uint32_t ms) {
	uint32_t end = get_milliseconds_running() + ms;
	while (get_milliseconds_running() < end)
		// Idle a little bit to not have interrupts disabled all the time.
		delay_us(30);
}

void __vector_MILLISECOND_CLOCK_INTERRUPT() INTERRUPT_FUNCTION;
void __vector_MILLISECOND_CLOCK_INTERRUPT() {
	inlined_millisecond_clock_tick();
}
