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
}

void initInterruptButton(PInterruptButton button) {
	enablePinChangeInterrupt(button->pinChangeInterruptNumber);
	setPinInput(button->button->pin);
}

#endif