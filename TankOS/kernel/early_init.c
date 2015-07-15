/*
 * reset_condition.c
 *
 * Created: 28.04.2012 11:05:02
 *  Author: Anton
 */

#include "early_init.h"

// This counter will not be overwritten by software. Upon a hardware reset,
// the memory section will be cleared to zero, but software resets (jumping to address 0) will keep this intact.
uint16_t software_reset_counter __attribute__ ((section (".noinit")));

// To confirm completed initialization, this will be writton to init_mask when main is entered.
#define INIT_MASK_INITIALIZED 0x5a

byte __initialization_complete_mask = 0;

void initialization_completed() {
    __initialization_complete_mask = INIT_MASK_INITIALIZED;
}

uint8_t current_reset_status = 0;

ResetCondition getResetCondition() {
	uint16_t mask = 0;
	uint8_t status = current_reset_status;
	if (status & _BV(PORF)) {
		// Power-On-Reset-Flag
		mask |= PowerOnReset;
	}
	if (status & _BV(WDRF)) {
		// Watch-Dog-Reset-Flag
		mask |= WatchDogReset;
	}
	if (status & _BV(BORF)) {
		// Brown-Out-Reset-Flag
		mask |= BrownOutReset;
	}
	if (!mask) mask = OtherReset;
	return mask;
}

void increment_software_reset_counter() {
    software_reset_counter++;
}

void increment_hardware_reset_counter() {
    // TODO
}

uint16_t getHardwareResets() {
    // TODO
    return 1;
}

void init_reset_condition() {
    current_reset_status = MCUSR;
	MCUSR = 0;
}

uint8_t rawResetConditionByte() {
	return current_reset_status;
}

InitStatus getInitStatus() {
    InitStatus status;
    status.initialized = __initialization_complete_mask == INIT_MASK_INITIALIZED;
    status.software_resets = software_reset_counter;
    return status;
}
