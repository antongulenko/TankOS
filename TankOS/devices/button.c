/*
 * button.c
 *
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */

#include "button.h"
#include <kernel/devices/external_interrupts.h>

typedef struct {
	uint8_t flags;
	Pin pin;
	uint8_t pinChangeInterruptNumber;
} _Button;

#define BUTTON Get(_Button, button)

static void initButton(_Button *button) {
	setPinInput(button->pin);
	if (button->flags & ButtonNeedsPullup)
	    setPinOne(button->pin); // Enable internal pull up resistor
	if (button->flags & ButtonUsePinChangeInterrupt)
		enablePinChangeInterrupt(button->pinChangeInterruptNumber);
}

Button newButton(Pin pin, ButtonType flags, uint8_t pinChangeInterruptNumber) {
    _Button *button = malloc(sizeof(_Button));
    if (!button) return Invalid(Button);
    button->flags = flags;
    button->pin = pin;
    button->pinChangeInterruptNumber = pinChangeInterruptNumber;
    initButton(button);
    return As(Button, button);
}

Button destroyButton(Button button) {
    if (IsValid(button))
        free(BUTTON);
    return Invalid(Button);
}

BOOL buttonStatus(Button button) {
	BOOL val = readPin(BUTTON->pin);
	if (BUTTON->flags & ButtonInverted) val = !val;
	return val;
}
