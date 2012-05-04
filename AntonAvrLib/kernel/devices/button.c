/*
 * buttonm.c
 *
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */ 

#include "button.h"
#include "port.h"

BOOL buttonStatus(PButton button) {
	BOOL val = readPin(button->pin);
	if (button->flags & BUTTON_INVERTED) val = !val;
	return val;
}
