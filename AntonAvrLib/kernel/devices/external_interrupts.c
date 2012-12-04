/*
 * external_interrupts.c
 *
 * Created: 26.04.2012 18:12:38
 *  Author: Anton
 */ 

#include "external_interrupts.h"

volatile uint8_t *maskRegisters[] = { &PCMSK0, &PCMSK1, &PCMSK2, &PCMSK3 };

void enablePinChangeInterrupt(uint8_t pcNumber) {
	if (pcNumber > 31) return;
	uint8_t maskRegisterBit = pcNumber % 8;
	uint8_t maskRegisterNumber = pcNumber / 8; // Always rounded down
	*(maskRegisters[maskRegisterNumber]) |= _BV(maskRegisterBit);
	PCICR |= _BV(maskRegisterNumber); // This will be redundant, after one PCI in a 8-bit port has been enabled.
}

void disblePinChangeInterrupt(uint8_t pcNumber) {
	if (pcNumber > 31) return;
	uint8_t maskRegisterBit = pcNumber % 8;
	uint8_t maskRegisterNumber = pcNumber / 8; // Always rounded down
	*(maskRegisters[maskRegisterNumber]) &= ~_BV(maskRegisterBit);
	if (*maskRegisters[maskRegisterNumber] == 0)
		PCICR &= ~_BV(maskRegisterNumber);
}
