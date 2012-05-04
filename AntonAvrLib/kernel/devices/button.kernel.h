/*
 * button.kernel
 *
 * Created: 22.04.2012 17:28:25
 *  Author: Anton
 */ 

#ifndef _BUTTON_KERNEL_
#define _BUTTON_KERNEL_

#include "../kernel_init.h"
#include "external_interrupts.h"
#include "button.h"

void initButton(PButton button) {
	setPinInput(button->pin);
	if (button->flags & BUTTON_NEEDS_PULLUP)
		setPinOne(button->pin); // Enable intern pull up resistor
}

void initInterruptButton(PInterruptButton button) {
	initButton(button->button);
	enablePinChangeInterrupt(button->pinChangeInterruptNumber);
}

#endif