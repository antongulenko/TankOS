/*
 * button.c
 *
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */

#include "button.h"

ButtonCallbackFunction buttonPressedCallback;
ButtonCallbackFunction buttonReleasedCallback;

#define PIN Cast(Pin, button)

#define DATA_FLAGS 0
#define DATA_STATUS 2

enum {
	MASK_STATUS = _BV(0),
	MASK_WAS_PRESSED = _BV(1),
	MASK_WAS_RELEASED = _BV(2)
};

static void initButton(Pin pin, ButtonType flags) {
	setPinInput(pin);
	if (flags & ButtonNeedsPullup)
	    setPinOne(pin); // Enable internal pull up resistor
}

Button newButton(Pin pin, ButtonType flags) {
    ConfigData data;
    data.data[DATA_FLAGS] = (uint8_t) flags;
    data.data[DATA_STATUS] = 0;
    if (!occupyPinDirectly(pin, PinButtonInput, data)) {
        return Invalid(Button);
    }
    initButton(pin, flags);
    return Cast(Button, pin);
}

Button destroyButton(Button button) {
    if (buttonValid(button))
        deOccupyPin(PIN, PinButtonInput);
    return Invalid(Button);
}

BOOL buttonValid(Button button) {
    if (!IsValid(button))
        return FALSE;
    if (pinOccupation(PIN) != PinButtonInput)
        return FALSE;
    return TRUE;
}

BOOL buttonStatus(Button button) {
    if (!buttonValid(button)) return FALSE;
	BOOL val = readPin(PIN);
    ConfigData *data = pinConfigData(PIN, PinButtonInput);
	if (data->data[DATA_FLAGS] & ButtonInverted) val = !val;
	return val;
}

void updateButtonStatus(Button button) {
    if (!IsValid(button)) return;
    ConfigData *data = pinConfigData(PIN, PinButtonInput);
    if (!data) return;
	uint8_t status = data->data[DATA_STATUS];
    BOOL isPressed = buttonStatus(button);
    BOOL wasPressed = status & MASK_STATUS;
    if (!wasPressed && isPressed) {
        if (buttonPressedCallback) buttonPressedCallback(button);
        status |= MASK_WAS_PRESSED;
    }
    if (wasPressed && !isPressed) {
        if (buttonReleasedCallback) buttonReleasedCallback(button);
        status |= MASK_WAS_RELEASED;
    }
	if (isPressed)
		status |= MASK_STATUS;
	else
		status &= ~MASK_STATUS;
	data->data[DATA_STATUS] = status;
}

BOOL wasPressed(Button button) {
    if (!IsValid(button)) return FALSE;
    ConfigData *data = pinConfigData(PIN, PinButtonInput);
    if (!data) return FALSE;
    BOOL result = data->data[DATA_STATUS] & MASK_WAS_PRESSED;
    data->data[DATA_STATUS] &= ~MASK_WAS_PRESSED;
    return result;
}

BOOL wasReleased(Button button) {
    if (!IsValid(button)) return FALSE;
    ConfigData *data = pinConfigData(PIN, PinButtonInput);
    if (!data) return FALSE;
    BOOL result = data->data[DATA_STATUS] & MASK_WAS_RELEASED;
    data->data[DATA_STATUS] &= ~MASK_WAS_RELEASED;
    return result;
}

ButtonGroup newButtonGroup(Button *buttonArray, uint8_t buttonCount) {
	ButtonGroup group = malloc(sizeof(struct ButtonGroup));
    if (!group) return NULL;
	group->buttons = buttonArray;
	group->count = buttonCount;
	return group;
}

ButtonGroup destroyButtonGroup(ButtonGroup group) {
    if (group != NULL) free(group);
    return NULL;
}

BOOL buttonGroupValid(ButtonGroup group) {
    if (group == NULL) return FALSE;
    if (group->buttons == NULL) return FALSE;
    return TRUE;
}

void updateButtonGroup(ButtonGroup group) {
    if (!buttonGroupValid(group)) return;
    for (int i = 0; i < group->count; i++) {
        updateButtonStatus(group->buttons[i]);
    }
}

uint8_t buttonStatusMask(ButtonGroup group) {
    if (!buttonGroupValid(group)) return 0;
    uint8_t mask = 0;
    for (int i = 0; i < group->count && i < 8; i++) {
        if (buttonStatus(group->buttons[i]))
            mask |= _BV(i);
    }
    return mask;
}

uint8_t wasPressedMask(ButtonGroup group) {
    if (!buttonGroupValid(group)) return 0;
    uint8_t mask = 0;
    for (int i = 0; i < group->count && i < 8; i++) {
        if (wasPressed(group->buttons[i]))
            mask |= _BV(i);
    }
    return mask;
}

uint8_t wasReleasedMask(ButtonGroup group) {
    if (!buttonGroupValid(group)) return 0;
    uint8_t mask = 0;
    for (int i = 0; i < group->count && i < 8; i++) {
        if (wasReleased(group->buttons[i]))
            mask |= _BV(i);
    }
    return mask;
}
