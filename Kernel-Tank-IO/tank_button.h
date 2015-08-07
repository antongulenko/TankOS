/*
 * tank_button.h
 *
 * Created: 28.04.2012 00:56:00
 *  Author: Anton
 */

#ifndef TANK_BUTTON_H_
#define TANK_BUTTON_H_

#include <devices/button.h>
#include <tank_io_protocol.h>

extern Button button1, button2, button3, button4;

typedef enum {
    BUTTON_1 = _BV(0),
    BUTTON_2 = _BV(1),
    BUTTON_3 = _BV(2),
    BUTTON_4 = _BV(3)
} TankButtonMask;

TankButtonMask buttonStatusMask();

// Updates the variable, that stores, which buttons have been pressed
// lately. No need to call this if pin-change-interrupts are used.
void updateButtonStatus();

// Return a mask of buttons, that has been pressed since the last call of
// this function. Is used to implement TANK_IO_pressedButtons (TWI).
TankButtonMask pressedButtons();

#endif /* TANK_BUTTON_H_ */
