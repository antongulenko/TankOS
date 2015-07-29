/*
 * external_interrupts.c
 *
 * Created: 26.04.2012 18:12:38
 *  Author: Anton
 */

#include "external_interrupts.h"

static volatile uint8_t *maskRegister(uint8_t num) {
    switch(num) {
        case 0: return &PCMSK0;
        case 1: return &PCMSK1;
        case 2: return &PCMSK2;
        case 3: return &PCMSK3;
    }
    // Should never happen...
    return &PCMSK3;
}

void enablePinChangeInterrupt(uint8_t pcNumber) {
	if (pcNumber > 31) return;
	uint8_t maskRegisterBit = pcNumber % 8;
	uint8_t maskRegisterNumber = pcNumber / 8; // Always rounded down
    volatile uint8_t *reg = maskRegister(maskRegisterNumber);
	*reg |= _BV(maskRegisterBit);
	PCICR |= _BV(maskRegisterNumber); // This will be redundant, after one PCI in a 8-bit port has been enabled.
}

void disblePinChangeInterrupt(uint8_t pcNumber) {
	if (pcNumber > 31) return;
	uint8_t maskRegisterBit = pcNumber % 8;
	uint8_t maskRegisterNumber = pcNumber / 8; // Always rounded down
    volatile uint8_t *reg = maskRegister(maskRegisterNumber);
	*reg &= ~_BV(maskRegisterBit);
	if (*reg == 0)
		PCICR &= ~_BV(maskRegisterNumber);
}

BOOL isPinChangeInterruptEnabled(uint8_t pcNumber) {
	if (pcNumber > 31) return FALSE;
	uint8_t maskRegisterBit = pcNumber % 8;
	uint8_t maskRegisterNumber = pcNumber / 8; // Always rounded down
	BOOL isEnabled = (PCICR & _BV(maskRegisterNumber)) != 0;
    volatile uint8_t *reg = maskRegister(maskRegisterNumber);
	isEnabled &= (*reg & _BV(maskRegisterBit)) != 0;
	return isEnabled;
}

void clear_interrupt_registers() {
	PCMSK0 = PCMSK1 = PCMSK2 = PCMSK3 = 0;
	PCICR = 0;
}
