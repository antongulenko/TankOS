
#include "native_simulation.h"

REGISTER PCMSK0, PCMSK1, PCMSK2, PCMSK3;
REGISTER PCICR;

REGISTER TWCR, TWDR, TWBR, TWSR, TWAR, TWAMR;

REGISTER MCUSR;

uint8_t hardware_reset_triggered = 0;

void _delay_ms(double ms) {
    // Nothing, just pretend.
}

void _delay_us(double us) {
    // Nothing, just pretend.
}

uint8_t _interrupts_enabled = 1;

void cei() {
    _interrupts_enabled = 0;
}

void sei () {
    _interrupts_enabled = 1;
}

void HARDWARE_RESET() {
    // TODO somehow simluate a more complete hardware reset.
    hardware_reset_triggered = 1;
}
