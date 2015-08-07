/*
 * led.c
 *
 * Created: 26.04.2012 17:04:20
 *  Author: Anton
 */

#include "led.h"

typedef struct _Led {
	Pin pin;
} _Led;

#define PIN Cast(Pin, led)

Led newLed(Pin pin) {
    if (!occupyPinDirectly(pin, PinLedOutput, EmptyConfigData)) {
        return Invalid(Led);
    }
    setPinOutput(pin);
    return Cast(Led, pin);
}

Led destroyLed(Led led) {
    if (ledValid(led))
        deOccupyPin(PIN, PinLedOutput);
    return Invalid(Led);
}

BOOL ledValid(Led led) {
    if (!IsValid(led)) return FALSE;
    if (pinOccupation(PIN) != PinLedOutput)
        return FALSE;
    return TRUE;
}

LedGroup newLedGroup(Led *leds, uint8_t count) {
    LedGroup group = malloc(sizeof(struct LedGroup));
    if (!group) return NULL;
    group->leds = leds;
    group->count = count;
    return As(LedGroup, group);
}

LedGroup destroyLedGroup(LedGroup group) {
    if (group) free(group);
    return NULL;
}

void enableLed(Led led) {
    if (!ledValid(led)) return;
	writePin(PIN, TRUE);
}

void disableLed(Led led) {
    if (!ledValid(led)) return;
	writePin(PIN, FALSE);
}

void setLed(Led led, BOOL value) {
    if (!ledValid(led)) return;
	writePin(PIN, value);
}

void setLeds(LedGroup group, uint16_t mask) {
	uint16_t iMask = 1;
	for (int i = 0, n = group->count; i < n; i++) {
        setLed(group->leds[i], 0 != (iMask & mask));
		iMask = iMask << 1;
	}
}

void enableLeds(LedGroup group) {
	for (int i = 0, max = group->count; i < max; i++) {
        enableLed(group->leds[i]);
	}
}

void disableLeds(LedGroup group) {
	for (int i = 0, max = group->count; i < max; i++) {
		disableLed(group->leds[i]);
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
    if (!ledValid(led)) return;
	for (uint8_t i = 0; i < times; i++) {
		enableLed(led);
		BLINK_DELAY();
		disableLed(led);
		BLINK_DELAY();
	}
}

void flashLed(Led led, const uint16_t millis) {
    if (!ledValid(led)) return;
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
