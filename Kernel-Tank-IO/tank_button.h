/*
 * tank_button.h
 *
 * Created: 28.04.2012 00:56:00
 *  Author: Anton
 */ 

#ifndef TANK_BUTTON_H_
#define TANK_BUTTON_H_

#include <kernel/devices/button.h>
#include "shared/tank_IO_protocol.h"

DEFINE_BUTTON(Button1)
DEFINE_BUTTON(Button2)
DEFINE_BUTTON(Button3)
DEFINE_BUTTON(Button4)
DEFINE_BUTTON(ButtonSwitch)

uint8_t buttonStatusMask();

// Updates the variable, that stores, which buttons have been pressed
// lately. No need to call this if pin-change-interrupts are used.
void updateButtonStatus();

// Return a mask of buttons, that has been pressed since the last call of
// this function. Is used to implement TANK_IO_pressedButtons (TWI).
uint8_t pressedButtons();

#endif /* TANK_BUTTON_H_ */