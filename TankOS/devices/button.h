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

DEFINE_HANDLE(Button)

#define PinButtonInput 4

Button newButton(Pin pin, ButtonType flags, uint8_t pinChangeInterruptNumber);
Button destroyButton(Button button);
BOOL buttonValid(Button button);

BOOL buttonStatus(Button button);

#endif /* BUTTON_H_ */
