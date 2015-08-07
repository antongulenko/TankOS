/*
 * Created: 28.04.2012 00:56:00
 *  Author: Anton
 */

#ifndef TANK_LED_H_
#define TANK_LED_H_

#include <devices/led.h>

extern Led whiteLed1, whiteLed2, whiteLed3, whiteLed4, whiteLed5; // Nr 2 is actually red
extern Led redLed1, redLed2, redLed3, redLed4, redLed5;
extern Led greenLed1, greenLed2, greenLed3, yellowLed1, yellowLed2;

extern LedGroup redLeds, yellowLeds, whiteLeds, greenLeds, leftLeds, middleLeds, rightLeds, allLeds;

#endif /* TANK_LED_H_ */
