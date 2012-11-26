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

// TODO set interrupt numbers and copy the routine for all buttons.

// TODO Not locking the mutex, since interrupts
// are already disabled here... Works for now, since
// it simply disables interrupts. When using a real mutex, will
// have to move all ISRs to normal DMS-processes!...
#define LOCK_BUTTON_MUTEX() // mutex_lock(buttonMutex);
#define RELEASE_BUTTON_MUTEX() // mutex_release(buttonMutex);

// TODO this is not ready

#ifdef AAAAAAAA

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
