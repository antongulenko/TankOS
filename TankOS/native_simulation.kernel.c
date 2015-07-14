
#include "native_simulation.h"

// TODO
// On x86 the memory handlings are not really correct, but sufficient for unit tests...
#ifndef AVR
#pragma GCC diagnostic ignored "-Wpointer-to-int-cast"
#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"
#endif

#include <stdio.h>

void init_native_simulation() {
    PCMSK0 = PCMSK1 = PCMSK2 = PCMSK3 = 0;
    PCICR = 0;
    TWCR = TWDR = TWBR = TWSR = TWAR = TWAMR = 0;
    MCUSR = 0;
    hardware_reset_triggered = 0;
    _interrupts_enabled = 0;
    __brkval = (uint16_t) __malloc_heap_start;
}

uint16_t __brkval;

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

void sei() {
    _interrupts_enabled = 1;
}

void HARDWARE_RESET() {
    init_native_simulation();
    hardware_reset_triggered = 1;
    MCUSR = _BV(WDRF); // Real HARDWARE_RESET is implemented through Watchdog Timeout
}
