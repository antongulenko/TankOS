
#include "early_init.h"
#include <platform/kernel_init.h>

void kernel_init_eeprom() {
    eeprom_busy_wait();
    increment_eeprom_reset_counter();
}
KERNEL_INIT(kernel_init_eeprom)

// === Asynchronous alternative:
// EECR |= _BV(EERIE); // Enable eeprom-ready interrupt EE_READY
// INTERRUPT_HANDLER(EE_READY_vect) {
//     increment_eeprom_reset_counter();
// }
