
#include "native_simulation.h"

REGISTER PCMSK0, PCMSK1, PCMSK2, PCMSK3;
REGISTER PCICR;

REGISTER TWCR, TWDR, TWBR, TWSR, TWAR, TWAMR;

void _delay_ms(double ms) {
	// Nothing, just pretend.
}
