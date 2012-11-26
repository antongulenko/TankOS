
#include "tank_button_internal.h"
#include <kernel/devices/port_m1284P.h>

// TODO buttonMutex not used here, because the ISRs are atomic.
// -- still, this can go wrong when using a real mutex implementation in
// tank_buttons.kernel.c, that does not simply disable all interrupts.

ISR(PCINT0_vect) {
	if (!(wasPressed & BUTTON_1) && buttonStatus(Button1)) {
		buttonsPressedSinceLastCall |= BUTTON_1;
	}
}

ISR(PCINT1_vect) {
	if (!(wasPressed & BUTTON_2) && buttonStatus(Button2)) {
		buttonsPressedSinceLastCall |= BUTTON_2;
	}
}

ISR(PCINT2_vect) {
	if (!(wasPressed & BUTTON_3) && buttonStatus(Button3)) {
		buttonsPressedSinceLastCall |= BUTTON_3;
	}
}

ISR(PCINT3_vect) {
	if (!(wasPressed & BUTTON_4) && buttonStatus(Button4)) {
		buttonsPressedSinceLastCall |= BUTTON_4;
	}
}
