/*
 * reset_condition.c
 *
 * Created: 28.04.2012 11:05:02
 *  Author: Anton
 */ 

#include "reset_condition.h"

uint16_t resetStatusBitmask() {
	uint16_t mask = 0;
	uint8_t status = getResetStatus();
	if (status & _BV(PORF)) {
		// Power-On-Reset-Flag
		mask |= _BV(15);
	}
	if (status & _BV(WDRF)) {
		// Watch-Dog-Reset-Flag
		mask |= _BV(14);
	}
	if (status & _BV(BORF)) {
		// Brown-Out-Reset-Flag
		mask |= _BV(13);
	}
	if (!mask) mask = _BV(12);
	return mask;
}

void blink_reset_condition(PLedGroup leds) {
	disableLeds(leds);
	blinkLeds(leds, resetStatusBitmask(), 4);
}

void blink_reset_condition_byte(PLedGroup blinker, PLedGroup notifier) {
	disableLeds(blinker);
	disableLeds(notifier);
	blinkByte(blinker, notifier, getResetStatus());
}
