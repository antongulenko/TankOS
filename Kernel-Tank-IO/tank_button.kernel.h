/*
 * tank_button.kernel
 *
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */ 

#ifndef _TANK_BUTTON_KERNEL_
#define _TANK_BUTTON_KERNEL_

#include <kernel/kernel_init.h>
#include <kernel/devices/port_m1284P.kernel.h>
#include <kernel/devices/button.kernel.h>
#include "tank_button.h"

void init_tank_buttons() {
	
	// TODO set pins correctly

	INIT_BUTTON(Button1, PinA1, BUTTON_NORMAL)
	INIT_BUTTON(Button2, PinA2, BUTTON_NORMAL)
	INIT_BUTTON(Button3, PinA3, BUTTON_NORMAL)
	INIT_BUTTON(Button4, PinA4, BUTTON_NORMAL)
	INIT_BUTTON(ButtonSwitch, PinA5)
}
KERNEL_INIT(init_tank_buttons)

#endif