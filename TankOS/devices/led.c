/*
 * led.c
 *
 * Created: 26.04.2012 17:04:20
 *  Author: Anton
 */

#include "led.h"

typedef struct {
	Pin pin;
} _Led;

typedef struct {
	Led *leds;
	uint8_t count;
} _LedGroup;

#define LED Get(_Led, led)
#define GROUP Get(_LedGroup, group)

Led newLed(Pin pin) {
    _Led *led = malloc(sizeof(_Led));
    if (!led) return Invalid(Led);
    led->pin = pin;
    setPinOutput(pin);
    return As(Led, led);
}

void destroyLed(Led led) {
    if (IsValid(led))
        free(LED);
}

LedGroup newLedGroup(Led *leds, uint8_t count) {
    _LedGroup *group = malloc(sizeof(_LedGroup));
    if (!group) return Invalid(LedGroup);
    group->leds = leds;
    group->count = count;
    return As(LedGroup, group);
}

void destroyLedGroup(LedGroup group) {
    if (IsValid(group))
        free(GROUP);
}

void enableLed(Led led) {
	writePin(LED->pin, TRUE);
}

void disableLed(Led led) {
	writePin(LED->pin, FALSE);
}

void setLed(Led led, BOOL value) {
	writePin(LED->pin, value);
}

void setLeds(LedGroup group, uint16_t mask) {
	uint16_t iMask = 1;
	for (int i = 0, n = GROUP->count; i < n; i++) {
        setLed(GROUP->leds[i], 0 != (iMask & mask));
		iMask = iMask << 1;
	}
}

void enableLeds(LedGroup group) {
	for (int i = 0, max = GROUP->count; i < max; i++) {
        enableLed(GROUP->leds[i]);
	}
}

void disableLeds(LedGroup group) {
	for (int i = 0, max = GROUP->count; i < max; i++) {
		disableLed(GROUP->leds[i]);
	}
}

static inline void BLINK_DELAY() {
    delay_ms(BLINK_DELAY_MS);
}

static inline void FLASH_DELAY_MS(uint16_t millis) {
	// This not accurate, but makes the delay flexible at runtime.
    while (millis-- > 0)
        delay_ms(1);
}

void blinkLeds(LedGroup group, uint16_t ledMask, uint8_t times) {
	for (uint8_t i = 0; i < times; i++) {
		setLeds(group, ledMask);
		BLINK_DELAY();
		disableLeds(group);
		BLINK_DELAY();
	}
}

void blinkAllLeds(LedGroup group, uint8_t times) {
	blinkLeds(group, 0xFFFF, times);
}

void blinkLed(Led led, uint8_t times) {
	for (uint8_t i = 0; i < times; i++) {
		enableLed(led);
		BLINK_DELAY();
		disableLed(led);
		BLINK_DELAY();
	}
}

void flashLed(Led led, const uint16_t millis) {
	enableLed(led);
	FLASH_DELAY_MS(millis);
	disableLed(led);
}

void flashLeds(LedGroup leds, uint16_t ledMask, uint16_t millis) {
	setLeds(leds, ledMask);
	FLASH_DELAY_MS(millis);
	disableLeds(leds);
}

void flashAllLeds(LedGroup leds, uint16_t millis) {
	flashLeds(leds, 0xFFFF, millis);
}
