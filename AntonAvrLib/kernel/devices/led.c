/*
 * led.c
 *
 * Created: 26.04.2012 17:04:20
 *  Author: Anton
 */ 

#include "led.h"
#include "port.h"
#include <util/delay.h>

void enableLed(PLed led) {
	writePin(led->pin, TRUE);
}

void disableLed(PLed led) {
	writePin(led->pin, FALSE);
}

void setLed(PLed led, BOOL value) {
	writePin(led->pin, value);
}

void setLeds(PLedGroup leds, uint16_t mask) {
	uint16_t iMask = 1;
	for (int i = 0, max = leds->count; i < max; i++) {
		setLed(leds->leds[i], iMask & mask);
		iMask = iMask << 1;
	}
}

void enableLeds(PLedGroup leds) {
	for (int i = 0, max = leds->count; i < max; i++) {
		enableLed(leds->leds[i]);
	}
}

void disableLeds(PLedGroup leds) {
	for (int i = 0, max = leds->count; i < max; i++) {
		disableLed(leds->leds[i]);
	}
}

void blinkLeds(PLedGroup leds, uint16_t ledMask, const uint8_t times) {
	for (uint8_t i = 0; i < times; i++) {
		setLeds(leds, ledMask);
		_delay_ms(200);
		disableLeds(leds);
		_delay_ms(200);
	}
}

void blinkAllLeds(PLedGroup leds, const uint8_t times) {
	blinkLeds(leds, 0xFFFF, times);
}
