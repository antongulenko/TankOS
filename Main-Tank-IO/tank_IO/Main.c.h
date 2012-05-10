
#include "LedOperations.h"

// #define USE_ISR
#define TICK_AFTER_MS 200

int main() {
	led_operation_1();
	
	#ifndef USE_ISR
		while (1) {
			_delay_ms(TICK_AFTER_MS);
			led_operation_tick();
		}
	#endif
	// After the main ends, the IO-processor will still be able to receive
	// commands from the main processor.
}

#ifdef USE_ISR
uint16_t ticks = 0;
ISR(CLOCKISR_B) {
	ticks++;
		if (ticks % TICK_AFTER_MS)
			led_operation_tick();
}
#endif
