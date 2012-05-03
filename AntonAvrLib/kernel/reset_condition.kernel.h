#ifndef _INIT_RESET_CONDITION_KERNEL_
#define _INIT_RESET_CONDITION_KERNEL_

#include "kernel_init.h"
#include "reset_condition.h"

uint8_t current_reset_status = 0;

void init_reset_condition() {
	// Read and reset the MCU-status-register.
	// This kernel-file should be included in the very beginning, as MCUSR should
	// be reset in the very beginning.
	current_reset_status = MCUSR;
	MCUSR = 0;
}
KERNEL_INIT(init_reset_condition)

uint8_t getResetStatus() {
	return current_reset_status;
}

#endif