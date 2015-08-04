/*
 * led.h
 *
 * Created: 26.04.2012 16:56:40
 *  Author: Anton
 */

#ifndef LED_H_
#define LED_H_

#ifndef BLINK_DELAY_MS
#define BLINK_DELAY_MS 200
#endif

#include <kernel/devices/port.h>
#include <tank_os_common.h>

typedef struct {
	PPin pin;
} Led, *PLed;

typedef struct {
	PLed *leds;
	uint8_t count;
} LedGroup, *PLedGroup;

void enableLed(PLed led);
void disableLed(PLed led);
void setLed(PLed led, BOOL value);

// Sets the first 16 (or less, if there are less than 16) leds in
// the led-group according to the given bitmask.
// If the bit (1 << n) is set, the led group[n] will be activated.
void setLeds(PLedGroup leds, uint16_t mask);

void enableLeds(PLedGroup leds);
void disableLeds(PLedGroup leds);

void blinkLed(PLed led, const uint8_t times);
void blinkLeds(PLedGroup leds, uint16_t ledMask, uint8_t times);
void blinkAllLeds(PLedGroup leds, uint8_t times);

void flashLed(PLed led, const uint16_t millis);
void flashLeds(PLedGroup leds, uint16_t ledMask, uint16_t millis);
void flashAllLeds(PLedGroup leds, uint16_t millis);

// notifier-group will blink to notify the data, then the byte will be
// flashed with the display group. Will be shifted to flash remaining bits.
void blinkByte(PLedGroup display, PLedGroup notifier, byte data);

void initLed(PLed led);

#define DEFINE_LED(ledName)	extern const PLed ledName;
#define DEFINE_LED_GROUP(groupName)	extern const PLedGroup groupName;

#define INIT_LED(ledName, pinName)	\
	ledName##_ = (Led) { pinName };	\
	initLed(ledName);
#define INIT_LED_GROUP(groupName, groupArrayPointer, count) \
	groupName##_ = (LedGroup) { groupArrayPointer, count };

#define DEFINE_LED_IMPL(ledName)	\
	Led ledName##_;					\
	const PLed ledName = &ledName##_;
#define DEFINE_LED_GROUP_IMPL(groupName)	\
	LedGroup groupName##_;					\
	const PLedGroup groupName = &groupName##_;

#endif /* LED_H_ */
