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
	#define NIBOBEE_BUTTON (BUTTON_NEEDS_PULLUP | BUTTON_INVERTED)
	INIT_BUTTON(ButtonLeftBackward, PinC5, NIBOBEE_BUTTON, 21)
	INIT_BUTTON(ButtonLeftForward, PinC4, NIBOBEE_BUTTON, 20)
	INIT_BUTTON(ButtonRightBackward, PinC7, NIBOBEE_BUTTON, 22)
	INIT_BUTTON(ButtonRightForward, PinC6, NIBOBEE_BUTTON, 23)
}
KERNEL_INIT(init_nibobee_buttons)

#endif