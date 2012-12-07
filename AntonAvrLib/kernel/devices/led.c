/*
 * led.c
 *
 * Created: 26.04.2012 17:04:20
 *  Author: Anton
 */ 

#include "led.h"
#include "port.h"

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
	for (int i = leds->count - 1; i >= 0; i--) {
		setLed(leds->leds[i], 0 != (iMask & mask));
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

static inline void BLINK_DELAY() { delay_ms(200); }
static inline void DELAY_MS(uint16_t millis) {
	while (millis--) delay_ms(1);
}

void blinkLeds(PLedGroup leds, uint16_t ledMask, uint8_t times) {
	for (uint8_t i = 0; i < times; i++) {
		setLeds(leds, ledMask);
		BLINK_DELAY();
		disableLeds(leds);
		BLINK_DELAY();
	}
}

void blinkAllLeds(PLedGroup leds, uint8_t times) {
	blinkLeds(leds, 0xFFFF, times);
}

void blinkLed(PLed led, uint8_t times) {
	for (uint8_t i = 0; i < times; i++) {
		enableLed(led);
		BLINK_DELAY();
		disableLed(led);
		BLINK_DELAY();
	}
}

void flashLed(PLed led, const uint16_t millis) {
	enableLed(led);
	DELAY_MS(millis);
	disableLed(led);
}

void flashLeds(PLedGroup leds, uint16_t ledMask, uint16_t millis) {
	setLeds(leds, ledMask);
	DELAY_MS(millis);
	disableLeds(leds);
}

void flashAllLeds(PLedGroup leds, uint16_t millis) {
	flashLeds(leds, 0xFFFF, millis);
}

void blinkByte(PLedGroup display, PLedGroup notifier, byte data) {
	flashAllLeds(notifier, 1500);
	uint16_t word = AS_WORD(data);
	blinkLeds(display, word, 3);
	if (display->count < 8) {
		// max one shift
		word = word << display->count;
		flashAllLeds(notifier, 700);
		blinkLeds(display, word, 3);
	}
}

void initLed(PLed led) {
	setPinOutput(led->pin);
}
