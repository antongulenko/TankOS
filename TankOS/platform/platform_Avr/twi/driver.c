
#include <platform/twi/driver.h>

volatile BOOL twi_running;
TwiError twi_error;

// Internal
byte twi_defaultControlFlags = 0;
TWIBuffer twi_buffer;
int handledBytes;

void twiWaitForCompletion() {
	while (1) {
		uint8_t still_running;
		ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
			still_running = twi_running;
		}
		if (!still_running) return;
	}
}
