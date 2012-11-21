/*
 * tank_button.kernel
 *
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include "tank_button.h"
#include <kernel/processes/mutex/mutex.h>
#include <kernel/devices/port_m1284P.h>

Mutex buttonMutex;
uint8_t buttonsPressedSinceLastCall = 0;
uint8_t wasPressed = 0;

DEFINE_BUTTON_IMPL(Button1)
DEFINE_BUTTON_IMPL(Button2)
DEFINE_BUTTON_IMPL(Button3)
DEFINE_BUTTON_IMPL(Button4)
DEFINE_BUTTON_IMPL(ButtonSwitch)

void init_tank_buttons() {
	#define TANK_BUTTON BUTTON_INVERTED | BUTTON_NEEDS_PULLUP
	INIT_BUTTON(Button1, PinC5, TANK_BUTTON, 21)
	INIT_BUTTON(Button2, PinC4, TANK_BUTTON, 20)
	INIT_BUTTON(Button3, PinC3, TANK_BUTTON, 19)
	INIT_BUTTON(Button4, PinC2, TANK_BUTTON, 18)
	INIT_BUTTON(ButtonSwitch, PinD7, TANK_BUTTON, 31)
	buttonMutex = mutex_create();
}
KERNEL_INIT(init_tank_buttons)

uint8_t buttonStatusMask() {
	uint8_t buttons = 0;
	if (buttonStatus(Button1)) buttons |= BUTTON_1;
	if (buttonStatus(Button2)) buttons |= BUTTON_2;
	if (buttonStatus(Button3)) buttons |= BUTTON_3;
	if (buttonStatus(Button4)) buttons |= BUTTON_4;
	if (buttonStatus(ButtonSwitch)) buttons |= BUTTON_SWITCH;
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
	if (!(wasPressed & BUTTON_SWITCH) && (pressedNow & BUTTON_SWITCH))
		newlyPressed |= BUTTON_SWITCH;
	
	mutex_lock(buttonMutex);
	buttonsPressedSinceLastCall |= newlyPressed;
	mutex_release(buttonMutex);
	
	wasPressed = pressedNow;
}

#ifdef FORCE_BUTTON_PIN_CHANGE_INTERRUPTS

// TODO set interrupt numbers and copy the routine for all buttons.

// TODO Not locking the mutex, since interrupts
// are already disabled here... Works for now, since
// it simply disables interrupts. When using a real mutex, will
// have to move all ISRs to normal DMS-processes!...
#define LOCK_BUTTON_MUTEX() // mutex_lock(buttonMutex);
#define RELEASE_BUTTON_MUTEX() // mutex_release(buttonMutex);

ISR(PCINTXX_vect) {
	if (!(wasPressed & BUTTON_1) && buttonStatus(Button1)) {
		LOCK_BUTTON_MUTEX()
		pressedButtons |= BUTTON_1;
		RELEASE_BUTTON_MUTEX()
	}
}

ISR(PCINTXX_vect) {
	if (!(wasPressed & BUTTON_2) && buttonStatus(Button2)) {
		LOCK_BUTTON_MUTEX()
		pressedButtons |= BUTTON_2;
		RELEASE_BUTTON_MUTEX()
	}
}

ISR(PCINTXX_vect) {
	if (!(wasPressed & BUTTON_3) && buttonStatus(Button3)) {
		LOCK_BUTTON_MUTEX()
		pressedButtons |= BUTTON_3;
		RELEASE_BUTTON_MUTEX()
	}
}

ISR(PCINTXX_vect) {
	if (!(wasPressed & BUTTON_4) && buttonStatus(Button4)) {
		LOCK_BUTTON_MUTEX()
		pressedButtons |= BUTTON_4;
		RELEASE_BUTTON_MUTEX()
	}
}

ISR(PCINTXX_vect) {
	if (!(wasPressed & BUTTON_SWITCH) && buttonStatus(ButtonSwitch)) {
		LOCK_BUTTON_MUTEX()
		pressedButtons |= BUTTON_SWITCH;
		RELEASE_BUTTON_MUTEX()
	}
}

#endif
