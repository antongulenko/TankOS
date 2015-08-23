/*
 * early_init.h
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

typedef struct InitStatus {
    uint16_t initialized;
    uint16_t software_resets;
} InitStatus;

InitStatus getInitStatus();
uint16_t getEepromResets();

// This should be called after all kernel initialization is completed, e.g. as first statement in main()
void boot_completed();

// These are part of the initialization sequence.
void init_reset_condition();
void increment_eeprom_reset_counter();
void increment_software_reset_counter();

#endif /* RESET_CONDITION_H_ */
