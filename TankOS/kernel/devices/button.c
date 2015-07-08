/*
 * button.c
 *
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */ 

#include "button.h"
#include "external_interrupts.h"

// Define the macro FORCE_BUTTON_PIN_CHANGE_INTERRUPT
// to always enable pin-change-interrupts for buttons!
// #define FORCE_BUTTON_PIN_CHANGE_INTERRUPT

BOOL buttonStatus(PButton button) {
	BOOL val = readPin(button->pin);
	if (button->flags & BUTTON_INVERTED) val = !val;
	return val;
}

void initButton(PButton button) {
	setPinInput(button->pin);
	if (button->flags & BUTTON_NEEDS_PULLUP)
	setPinOne(button->pin); // Enable intern pull up resistor
	
	if (button->flags & BUTTON_USE_PIN_CHANGE_INTERRUPT)
		enablePinChangeInterrupt(button->pinChangeInterruptNumber);
}
