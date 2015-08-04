/*
 * button.h
 *
 * Created: 26.04.2012 17:30:26
 *  Author: Anton
 */

#ifndef BUTTON_H_
#define BUTTON_H_

#include <kernel/devices/port.h>
#include <tank_os_common.h>

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

void initButton(PButton button);

#define DEFINE_BUTTON(buttonName) extern const PButton buttonName;

#define INIT_BUTTON(buttonName, pinName, flags, interruptNumber)	\
	buttonName##_ = (Button) { flags, pinName, interruptNumber };	\
	initButton(buttonName);

#define DEFINE_BUTTON_IMPL(buttonName)				\
	Button buttonName##_;						\
	const PButton buttonName = &buttonName##_;

#endif /* BUTTON_H_ */
