/*
 * button.h
 *
 * Created: 26.04.2012 17:30:26
 *  Author: Anton
 */

#ifndef BUTTON_H_
#define BUTTON_H_

#include <tank_os_common.h>
#include <kernel/devices/port.h>

typedef enum {
    ButtonNormal = 0,
    ButtonInverted = _BV(0),
    ButtonNeedsPullup = _BV(1),
    ButtonUsePinChangeInterrupt = _BV(2)
} ButtonType;

// === Button

DEFINE_HANDLE(Button);
#define PinButtonInput 4

Button newButton(Pin pin, ButtonType flags, uint8_t pinChangeInterruptNumber);
Button destroyButton(Button button);
BOOL buttonValid(Button button);

void updateButtonStatus(Button button);
BOOL buttonStatus(Button button);
BOOL wasPressed(Button button);
BOOL wasReleased(Button button);

typedef void (*ButtonCallbackFunction)(Button button);
extern ButtonCallbackFunction buttonPressedCallback;
extern ButtonCallbackFunction buttonReleasedCallback;

// === ButtonGroup

typedef struct ButtonGroup {
    Button *buttons;
    uint8_t count;
} *ButtonGroup;

ButtonGroup newButtonGroup(Button *buttonArray, uint8_t buttonCount);
ButtonGroup destroyButtonGroup(ButtonGroup reader);
BOOL buttonGroupValid(ButtonGroup reader);

void updateButtonGroup(ButtonGroup group);
// The masks handle only up to the first 8 buttons, first button will be represented by least significant bit.
uint8_t buttonStatusMask(ButtonGroup group);
uint8_t wasPressedMask(ButtonGroup group);
uint8_t wasReleasedMask(ButtonGroup group);

#endif /* BUTTON_H_ */
