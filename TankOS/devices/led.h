/*
 * led.h
 *
 * Created: 26.04.2012 16:56:40
 *  Author: Anton
 */

#ifndef LED_H_
#define LED_H_

#include <kernel/devices/port.h>
#include <tank_os_common.h>

#ifndef BLINK_DELAY_MS
#define BLINK_DELAY_MS 200
#endif

DEFINE_HANDLE(Led)
DEFINE_HANDLE(LedGroup)

Led newLed(Pin pin);
void destroyLed(Led led);
LedGroup newLedGroup(Led *leds, uint8_t count);
void destroyLedGroup(LedGroup led);

void enableLed(Led led);
void disableLed(Led led);
void setLed(Led led, BOOL value);

// Sets the first 16 (or less, if there are less than 16) leds in
// the led-group according to the given bitmask.
// If the bit (1 << n) is set, the led group[n] will be activated.
void setLeds(LedGroup leds, uint16_t mask);

void enableLeds(LedGroup leds);
void disableLeds(LedGroup leds);

void blinkLed(Led led, const uint8_t times);
void blinkLeds(LedGroup leds, uint16_t ledMask, uint8_t times);
void blinkAllLeds(LedGroup leds, uint8_t times);

void flashLed(Led led, const uint16_t millis);
void flashLeds(LedGroup leds, uint16_t ledMask, uint16_t millis);
void flashAllLeds(LedGroup leds, uint16_t millis);

#endif /* LED_H_ */
