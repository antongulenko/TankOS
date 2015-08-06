/*
 * button.c
 *
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */

#include "button.h"
#include <kernel/devices/external_interrupts.h>

#define PIN Cast(Pin, button)

static void initButton(Pin pin, ButtonType flags, uint8_t pinChangeInterruptNumber) {
	setPinInput(pin);
	if (flags & ButtonNeedsPullup)
	    setPinOne(pin); // Enable internal pull up resistor
	if (flags & ButtonUsePinChangeInterrupt)
		enablePinChangeInterrupt(pinChangeInterruptNumber);
}

Button newButton(Pin pin, ButtonType flags, uint8_t pinChangeInterruptNumber) {
    ConfigData data = { flags, pinChangeInterruptNumber, 0, 0 };
    if (!occupyPinDirectly(pin, PinButtonInput, data)) {
        return Invalid(Button);
    }
    initButton(pin, flags, pinChangeInterruptNumber);
    return Cast(Button, pin);
}

Button destroyButton(Button button) {
    // TODO - log error if FALSE
    deOccupyPin(PIN, PinButtonInput);
    return Invalid(Button);
}

BOOL buttonStatus(Button button) {
	BOOL val = readPin(PIN);
    ConfigData data = pinConfigData(PIN, PinButtonInput);
	if (data.data[0] /* flags */ & ButtonInverted) val = !val;
	return val;
}
