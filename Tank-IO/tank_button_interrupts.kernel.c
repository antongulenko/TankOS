
#include <platform/kernel_init.h>
#include <tank_os_common.h>
#include "tank_button.h"

INTERRUPT_HANDLER(PCINT0_vect) {
	updateButtonGroup(buttons);
}

static void enable_tank_button_interrupts() {
	PCICR |= _BV(PCIE0);
	PCMSK0 |= _BV(PCINT0) | _BV(PCINT1) | _BV(PCINT2) | _BV(PCINT3);
}
KERNEL_INIT(enable_tank_button_interrupts)
