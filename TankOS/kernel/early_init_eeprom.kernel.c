
#include "early_init.h"
#include <kernel/kernel_init.h>

INTERRUPT_HANDLER(EE_READY_vect) {
    increment_eeprom_reset_counter();
}

// Instead of a KERNEL_INIT routine, we wait for the eeprom-ready interrupt.
// KERNEL_INIT(increment_eeprom_reset_counter)
