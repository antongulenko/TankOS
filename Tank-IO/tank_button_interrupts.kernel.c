
#include <platform/kernel_init.h>
#include <platform/platform_Avr/pin_change.h>
#include "tank_button.h"

static void tankPinInterruptHandler(uint8_t portNum, uint8_t pins) {
	updateButtonGroup(buttons);
}

static void enable_tank_button_interrupts() {
	enablePinChangeInterrupt(0, 0);
	enablePinChangeInterrupt(0, 1);
	enablePinChangeInterrupt(0, 2);
	enablePinChangeInterrupt(0, 3);
	addPinInterruptHandler(0, tankPinInterruptHandler);
}
KERNEL_INIT(enable_tank_button_interrupts)
