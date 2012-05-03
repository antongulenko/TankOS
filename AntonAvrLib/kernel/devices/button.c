/*
 * buttonm.c
 *
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */ 

#include "button.h"
#include "port.h"

BOOL buttonStatus(PButton button) {
	return readPin(button->pin);
}
