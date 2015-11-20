/*
 * button.c
 *
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */

#include "button.h"
#include <kernel/klib.h>

ButtonCallbackFunction buttonPressedCallback;
ButtonCallbackFunction buttonReleasedCallback;

typedef struct _Button {
    Pin pin;
    ButtonType flags;
    uint8_t status;
} *_Button;

#define BUTTON Get(struct _Button, button)

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
    _Button button = kalloc(sizeof(struct _Button));
    if (!button) return Invalid(Button);
    if (!occupyPin(pin, PinButtonInput)) {
        free(button);
        return Invalid(Button);
    }
    button->pin = pin;
    button->flags = flags;
    button->status = 0;
    initButton(pin, flags);
    return As(Button, button);
}

Button destroyButton(Button button) {
    if (buttonValid(button)) {
        deOccupyPin(BUTTON->pin, PinButtonInput);
        free(BUTTON);
    }
    return Invalid(Button);
}

BOOL buttonValid(Button button) {
    if (!IsValid(button))
        return FALSE;
    if (pinOccupation(BUTTON->pin) != PinButtonInput)
        return FALSE;
    return TRUE;
}

BOOL buttonStatus(Button button) {
    if (!buttonValid(button)) return FALSE;
	BOOL val = readPin(BUTTON->pin);
	if (BUTTON->flags & ButtonInverted) val = !val;
	return val;
}

void updateButtonStatus(Button button) {
    if (!IsValid(button)) return;
	uint8_t status = BUTTON->status;
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
	BUTTON->status = status;
}

BOOL wasPressed(Button button) {
    if (!IsValid(button)) return FALSE;
    BOOL result = BUTTON->status & MASK_WAS_PRESSED;
    BUTTON->status &= ~MASK_WAS_PRESSED;
    return result;
}

BOOL wasReleased(Button button) {
    if (!IsValid(button)) return FALSE;
    BOOL result = BUTTON->status & MASK_WAS_RELEASED;
    BUTTON->status &= ~MASK_WAS_RELEASED;
    return result;
}

ButtonGroup newButtonGroup(Button *buttonArray, uint8_t buttonCount) {
	ButtonGroup group = kalloc(sizeof(struct ButtonGroup));
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
