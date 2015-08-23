
#include "millisecond_clock.h"

// This module should be linked together with either
// processes/scheduler.kernel or simple_timer.kernel, depending
// on whether the scheduler is needed or simply a up-to-date
// milliseconds_running value.

uint32_t volatile milliseconds_running = 0;

uint32_t get_milliseconds_running() {
	uint32_t result;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		result = milliseconds_running;
	}
	return result;
}

// This is invoked by either simple_timer.kernel or processes/scheduler.kernel,
// once every millisecond.
// Make sure, that the milliseconds-number is updated in the timer-routine.
void millisecond_clock_tick() {
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		milliseconds_running++;
	}
}

void wait_milliseconds(uint32_t ms) {
	uint32_t end = get_milliseconds_running() + ms;
	while (get_milliseconds_running() < end)
		// Idle a little bit to not have interrupts disabled all the time.
		delay_us(30);
}
