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

#define BUTTON_NORMAL 0
#define BUTTON_INVERTED (1 << 1)
#define BUTTON_NEEDS_PULLUP (1 << 2)

typedef struct {
	uint8_t flags;
	PPin pin;
} Button, *PButton;

typedef struct {
	PButton button;
	uint8_t pinChangeInterruptNumber;
} InterruptButton, *PInterruptButton;

// Read the current button status.
BOOL buttonStatus(PButton button);

#ifdef _KERNEL_
#	define DEFINE_BUTTON(buttonName)						\
		Button buttonName##_;								\
		const PButton buttonName = &buttonName##_;
#	define DEFINE_INTERRUPT_BUTTON(buttonName)				\
		InterruptButton buttonName##_;						\
		const PInterruptButton buttonName = &buttonName##_;
#	define INIT_BUTTON(buttonName, pinName, flags)			\
		buttonName##_ = (Button) { flags, pinName };		\
		initButton(buttonName);
#	define INIT_INTERRUPT_BUTTON(buttonName, pinName, flags, interruptNumber)	\
		buttonName##_ = (InterruptButton) { flags, pinName, interruptNumber };	\
		initInterruptButton(buttonName);
#else
#	define DEFINE_BUTTON(buttonName)	\
		extern const PButton buttonName;
#	define DEFINE_INTERRUPT_BUTTON(buttonName)	\
		extern const PInterruptButton buttonName;
#endif

#endif /* BUTTON_H_ */