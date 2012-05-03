/*
 * reset_condition.h
 *
 * Created: 21.04.2012 14:48:42
 *  Author: Anton
 */ 

#ifndef RESET_CONDITION_H_
#define RESET_CONDITION_H_

#include "devices/led.h"

// This requires init_reset_condition.kernel to be part of the kernel.
uint8_t getResetStatus();

// Return a bitmask with the bits set, as described in blink_reset_condition().
uint16_t resetStatusBitmask();

// For ca. a second, indicate with the given LED-group, what caused the current reset.
// At least 4 LEDs are required, and will be used from the beginning of the array.
// LED 1: power-down reset, LED 2: Watchdog-reset,
// LED 3: Brown-Out-reset, LED 4: something else
void blink_reset_condition(PLedGroup leds);

#endif /* RESET_CONDITION_H_ */