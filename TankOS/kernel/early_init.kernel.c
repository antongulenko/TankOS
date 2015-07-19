
// Additional to the main functionality of this kernel module,
// the watchdog timer is disabled, if DISABLE_WDT is defined.
// Disabling the wdt early is important, because it stays enabled after
// a wdt system-reset, which is used by the HARDWARE_RESET() implementation.

#include "kernel_init.h"
#include "early_init.h"

 void early_initialization() {
	// Read and reset the MCU-status-register.
	// This kernel-file should be included in the very beginning, as MCUSR should
	// be reset in the very beginning.
	init_reset_condition();
    wdt_disable();
    increment_software_reset_counter();
}
KERNEL_INIT(early_initialization)
