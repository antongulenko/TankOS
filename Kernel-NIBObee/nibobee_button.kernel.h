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
	INIT_BUTTON(ButtonLeftBackward, PinC4)
	INIT_BUTTON(ButtonLeftForward, PinC5)
	INIT_BUTTON(ButtonRightBackward, PinC6)
	INIT_BUTTON(ButtonRightForward, PinC7)
}
KERNEL_INIT(init_nibobee_buttons)

#endif