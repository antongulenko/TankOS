/*
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */

#include <platform/kernel_init.h>
#include <platform/platform_Avr/avr_atmega1284p/port.h>
#include <string.h>
#include "tank_button.h"

Button button1, button2, button3, button4;
static Button buttonArray[4];
ButtonGroup buttons;

void init_tank_buttons() {
	#define TANK_BUTTON (ButtonInverted | ButtonNeedsPullup)
	button1 = newButton(pinA0, TANK_BUTTON);
	button2 = newButton(pinA1, TANK_BUTTON);
	button3 = newButton(pinA2, TANK_BUTTON);
	button4 = newButton(pinA3, TANK_BUTTON);
    memcpy(buttonArray, (Button[]) { button1, button2, button3, button4 }, sizeof(buttonArray));
    buttons = newButtonGroup(buttonArray, 4);
}
KERNEL_INIT(init_tank_buttons)
