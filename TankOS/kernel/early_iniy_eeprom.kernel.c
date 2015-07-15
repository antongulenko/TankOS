
#include "early_init.h"

static void do_inc_eeprom_reset_counter() {
    increment_eeprom_reset_counter();
}
KERNEL_INIT(do_inc_eeprom_reset_counter)
