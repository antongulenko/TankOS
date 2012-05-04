/*
 * nibobee_button.kernel
 *
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */ 

#ifndef _NIBOBEE_BUTTON_KERNEL_
#define _NIBOBEE_BUTTON_KERNEL_

#include <kernel/devices/port_m1284P.kernel.h>
#include <kernel/kernel_init.h>
#include <kernel/devices/button.kernel.h>
#include "nibobee_button.h"

void init_nibobee_buttons() {
	INIT_BUTTON(ButtonLeftBackward, PinC5, BUTTON_NEEDS_PULLUP | BUTTON_INVERTED)
	INIT_BUTTON(ButtonLeftForward, PinC4, BUTTON_NEEDS_PULLUP | BUTTON_INVERTED)
	INIT_BUTTON(ButtonRightBackward, PinC7, BUTTON_NEEDS_PULLUP | BUTTON_INVERTED)
	INIT_BUTTON(ButtonRightForward, PinC6, BUTTON_NEEDS_PULLUP | BUTTON_INVERTED)
}
KERNEL_INIT(init_nibobee_buttons)

#endif