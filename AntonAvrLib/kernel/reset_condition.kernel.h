#ifndef _INIT_RESET_CONDITION_KERNEL_
#define _INIT_RESET_CONDITION_KERNEL_

// Additional to the main functionality of this kernel module,
// the watchdog timer is disabled. Defining the macro KEEP_WDT_ENABLED
// (e.g. before including this file) keeps the wdt enabled here.
// Disabling the wdt early is important, because it stays enabled after
// a wdt system-reset, which is used by my HARDWARE_RESET() implementation.

// #define KEEP_WDT_ENABLED

#include "kernel_init.h"
#include "reset_condition.h"
#include <avr/wdt.h>

uint8_t current_reset_status = 0;

void init_reset_condition() {
	// Read and reset the MCU-status-register.
	// This kernel-file should be included in the very beginning, as MCUSR should
	// be reset in the very beginning.
	current_reset_status = MCUSR;
	MCUSR = 0;
	#ifndef KEEP_WDT_ENABLED
		wdt_disable();
	#endif
}
KERNEL_INIT(init_reset_condition)

uint8_t getResetStatus() {
	return current_reset_status;
}

#endif