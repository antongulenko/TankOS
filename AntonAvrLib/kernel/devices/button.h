/*
 * button.h
 *
 * Created: 26.04.2012 17:30:26
 *  Author: Anton
 */ 

#ifndef BUTTON_H_
#define BUTTON_H_

#include "port.h"
#include "../../anton_std.h"

typedef struct {
	PPin pin;
} Button, *PButton;

typedef struct {
	PButton button;
	uint8_t pinChangeInterruptNumber;
} InterruptButton, *PInterruptButton;

// Read the current button status.
BOOL buttonStatus(PButton button);

#ifdef _KERNEL_
#	define DEFINE_BUTTON(buttonName)	\
		Button buttonName;
#	define DEFINE_INTERRUPT_BUTTON(buttonName)	\
		InterruptButton buttonName;
#	define INIT_BUTTON(buttonName, pinName)	\
		buttonName = (Button) { &pinName };			\
		initButton(&buttonName);
#	define INIT_INTERRUPT_BUTTON(buttonName, pinName, interruptNumber)	\
		buttonName = (InterruptButton) { &pinName, interruptNumber };						\
		initInterruptButton(&buttonName);
#else
#	define DEFINE_BUTTON(buttonName)	\
		extern Button buttonName;
#	define DEFINE_INTERRUPT_BUTTON(buttonName)	\
		extern InterruptButton buttonName;
#endif

#endif /* BUTTON_H_ */