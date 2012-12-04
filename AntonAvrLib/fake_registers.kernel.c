
#include "fake_registers.h"

uint8_t PCMSK0, PCMSK1, PCMSK2, PCMSK3;
uint8_t PCICR;

void clear_all_regsiters() {
	PCMSK0 = PCMSK1 = PCMSK2 = PCMSK3 = 0;
	PCICR = 0;
}
