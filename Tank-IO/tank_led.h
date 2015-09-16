/*
 * Created: 28.04.2012 00:56:00
 *  Author: Anton
 */

#ifndef TANK_LED_H_
#define TANK_LED_H_

#include <devices/led.h>
#include <devices/led_control.h>

extern Led redLed1, redLed2, redLed3, redLed4, redLed5;
extern Led greenLed1, greenLed2, greenLed3, greenLed4, greenLed5;
extern Led yellowLed1, yellowLed2, yellowLed3, yellowLed4, yellowLed5;
extern LedGroup redLeds, greenLeds, yellowLeds, leftLeds, middleLeds, rightLeds, allLeds;

extern ControlledLeds yellowLed1c, yellowLed2c, yellowLed3c, yellowLed4c, yellowLed5c;
extern ControlledLeds redLed1c, redLed2c, redLed3c, redLed4c, redLed5c;
extern ControlledLeds greenLed1c, greenLed2c, greenLed3c, greenLed4c, greenLed5c;
extern ControlledLeds redLedsC, greenLedsC, yellowLedsC, leftLedsC, middleLedsC, rightLedsC, allLedsC;

#endif /* TANK_LED_H_ */
