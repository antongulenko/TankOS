/*
 * tank_button.h
 *
 * Created: 28.04.2012 00:56:00
 *  Author: Anton
 */

#ifndef TANK_BUTTON_H_
#define TANK_BUTTON_H_

#include <devices/button.h>

extern Button button1, button2, button3, button4;
extern ButtonGroup buttons;

enum {
    BUTTON_1 = _BV(0),
    BUTTON_2 = _BV(1),
    BUTTON_3 = _BV(2),
    BUTTON_4 = _BV(3)
};

#endif /* TANK_BUTTON_H_ */
