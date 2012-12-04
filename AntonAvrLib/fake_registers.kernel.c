
#include "fake_registers.h"

uint8_t PCMSK0, PCMSK1, PCMSK2, PCMSK3;
uint8_t PCICR;
uint32_t DelayedMS;

void clear_all_regsiters() {
	PCMSK0 = PCMSK1 = PCMSK2 = PCMSK3 = 0;
	PCICR = 0;
	DelayedMS = 0;
}

void _delay_ms(double ms) {
	DelayedMS += (uint32_t) ms;
}
