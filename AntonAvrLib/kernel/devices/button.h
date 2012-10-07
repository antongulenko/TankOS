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
#define BUTTON_INVERTED _BV(0)
#define BUTTON_NEEDS_PULLUP _BV(1)
#define BUTTON_USE_PIN_CHANGE_INTERRUPT _BV(2)

typedef struct {
	uint8_t flags;
	PPin pin;
	uint8_t pinChangeInterruptNumber;
} Button, *PButton;

// Read the current button status.
BOOL buttonStatus(PButton button);

#ifdef _KERNEL_
#	define DEFINE_BUTTON(buttonName)						\
		Button buttonName##_;								\
		const PButton buttonName = &buttonName##_;
#	define INIT_BUTTON(buttonName, pinName, flags, interruptNumber)		\
		buttonName##_ = (Button) { flags, pinName, interruptNumber };	\
		initButton(buttonName);
#else
#	define DEFINE_BUTTON(buttonName)	\
		extern const PButton buttonName;
#endif

#endif /* BUTTON_H_ */