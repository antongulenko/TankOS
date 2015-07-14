/*
 * reset_condition.h
 *
 * Created: 21.04.2012 14:48:42
 *  Author: Anton
 */

#ifndef RESET_CONDITION_H_
#define RESET_CONDITION_H_

#include "devices/led.h"

typedef enum {
    PowerOnReset = _BV(15),
    WatchDogReset = _BV(14),
    BrownOutReset = _BV(13),
    OtherReset = _BV(12)
} ResetConditionBit;

typedef uint16_t ResetCondition;

// Return a bitmask describing the current reset status.
ResetCondition getResetCondition();

// Return the raw value of MCUSR read after the last boot.
// Implemented in reset_condition.kernel.c
uint8_t rawResetConditionByte();

void init_reset_condition();

#endif /* RESET_CONDITION_H_ */
