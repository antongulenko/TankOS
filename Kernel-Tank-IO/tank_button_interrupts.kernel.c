
#include <tank_os_common.h>
#include "tank_button.h"

INTERRUPT_HANDLER(PCINT0_vect) {
	updateButtonStatus(button1);
}

INTERRUPT_HANDLER(PCINT1_vect) {
	updateButtonStatus(button2);
}

INTERRUPT_HANDLER(PCINT2_vect) {
	updateButtonStatus(button3);
}

INTERRUPT_HANDLER(PCINT3_vect) {
	updateButtonStatus(button4);
}
