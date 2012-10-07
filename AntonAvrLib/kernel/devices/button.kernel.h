/*
 * button.kernel
 *
 * Created: 22.04.2012 17:28:25
 *  Author: Anton
 */ 

#ifndef _BUTTON_KERNEL_
#define _BUTTON_KERNEL_

// Define the macro FORCE_BUTTON_PIN_CHANGE_INTERRUPT
// to always enable pin-change-interrupts for buttons!

#include "../kernel_init.h"
#include "external_interrupts.h"
#include "button.h"

void initButton(PButton button) {
	setPinInput(button->pin);
	if (button->flags & BUTTON_NEEDS_PULLUP)
		setPinOne(button->pin); // Enable intern pull up resistor
	
	#ifndef FORCE_BUTTON_PIN_CHANGE_INTERRUPTS
	if (button->flags & BUTTON_USE_PIN_CHANGE_INTERRUPT)
	#endif
		enablePinChangeInterrupt(button->pinChangeInterruptNumber);
}

#endif