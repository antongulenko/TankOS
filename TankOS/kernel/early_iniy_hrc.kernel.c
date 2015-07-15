
#include "early_init.h"

static void do_inc_hardware_reset_counter() {
    increment_hardware_reset_counter();
}
KERNEL_INIT(do_inc_hardware_reset_counter)
