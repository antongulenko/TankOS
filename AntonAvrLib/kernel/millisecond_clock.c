
#include "millisecond_clock.h"
#include <util/atomic.h>

uint32_t get_milliseconds_running() {
	uint32_t result;
	ATOMIC_BLOCK(ATOMIC_FORCEON) {
		result = milliseconds_running;
	}
	return result;
}
