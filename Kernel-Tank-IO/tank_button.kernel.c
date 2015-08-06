/*
 * tank_button.kernel
 *
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include "tank_button_internal.h"
#include <kernel/mutex/mutex.h>
#include <m1284P/port.h>

Mutex buttonMutex;
uint8_t buttonsPressedSinceLastCall = 0;
uint8_t wasPressed = 0;

Button button1, button2, button3, button4;

void init_tank_buttons() {
	#define TANK_BUTTON (ButtonInverted | ButtonNeedsPullup)
	button1 = newButton(pinA0, TANK_BUTTON, 0);
	button2 = newButton(pinA1, TANK_BUTTON, 1);
	button3 = newButton(pinA2, TANK_BUTTON, 2);
	button4 = newButton(pinA3, TANK_BUTTON, 3);
	buttonMutex = mutex_create();
}
KERNEL_INIT(init_tank_buttons)

uint8_t buttonStatusMask() {
	TankButtonMask buttons = 0;
	if (buttonStatus(button1)) buttons |= BUTTON_1;
	if (buttonStatus(button2)) buttons |= BUTTON_2;
	if (buttonStatus(button3)) buttons |= BUTTON_3;
	if (buttonStatus(button4)) buttons |= BUTTON_4;
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
	TankButtonMask pressedNow = buttonStatusMask();
	TankButtonMask newlyPressed = 0;

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
