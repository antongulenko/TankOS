/*
 * tank_button.kernel
 *
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include "tank_button_internal.h"
#include <kernel/processes/mutex/mutex.h>
#include <kernel/devices/port_m1284P.h>

Mutex buttonMutex;
uint8_t buttonsPressedSinceLastCall = 0;
uint8_t wasPressed = 0;

DEFINE_BUTTON_IMPL(Button1)
DEFINE_BUTTON_IMPL(Button2)
DEFINE_BUTTON_IMPL(Button3)
DEFINE_BUTTON_IMPL(Button4)

__attribute__ ((noinline)) void init_tank_buttons() {
	#define TANK_BUTTON BUTTON_INVERTED | BUTTON_NEEDS_PULLUP
	INIT_BUTTON(Button1, PinA0, TANK_BUTTON, 0)
	INIT_BUTTON(Button2, PinA1, TANK_BUTTON, 1)
	INIT_BUTTON(Button3, PinA2, TANK_BUTTON, 2)
	INIT_BUTTON(Button4, PinA3, TANK_BUTTON, 3)
	buttonMutex = mutex_create();
}
KERNEL_INIT(init_tank_buttons)

uint8_t buttonStatusMask() {
	uint8_t buttons = 0;
	if (buttonStatus(Button1)) buttons |= BUTTON_1;
	if (buttonStatus(Button2)) buttons |= BUTTON_2;
	if (buttonStatus(Button3)) buttons |= BUTTON_3;
	if (buttonStatus(Button4)) buttons |= BUTTON_4;
	return buttons;
}

uint8_t pressedButtons() {
	mutex_lock(buttonMutex);
	uint8_t result = buttonsPressedSinceLastCall;
	buttonsPressedSinceLastCall = 0;
	mutex_release(buttonMutex);
	return result;
}

void updateButtonStatus() {
	uint8_t pressedNow = buttonStatusMask();
	uint8_t newlyPressed = 0;
	
	if (!(wasPressed & BUTTON_1) && (pressedNow & BUTTON_1))
		newlyPressed |= BUTTON_1;
	if (!(wasPressed & BUTTON_2) && (pressedNow & BUTTON_2))
		newlyPressed |= BUTTON_2;
	if (!(wasPressed & BUTTON_3) && (pressedNow & BUTTON_3))
		newlyPressed |= BUTTON_3;
	if (!(wasPressed & BUTTON_4) && (pressedNow & BUTTON_4))
		newlyPressed |= BUTTON_4;
	
	mutex_lock(buttonMutex);
	buttonsPressedSinceLastCall |= newlyPressed;
	mutex_release(buttonMutex);
	
	wasPressed = pressedNow;
}
