/*
 * Created: 28.04.2012 00:56:00
 *  Author: Anton
 */

#ifndef TANK_LED_H_
#define TANK_LED_H_

#include <devices/led.h>

DEFINE_LED(White1)
DEFINE_LED(White2) // This one is actually red.
DEFINE_LED(White3)
DEFINE_LED(White4)
DEFINE_LED(White5)

DEFINE_LED(Red1)
DEFINE_LED(Red2)
DEFINE_LED(Red3)
DEFINE_LED(Red4)
DEFINE_LED(Red5)

DEFINE_LED(Green1)
DEFINE_LED(Green2)
DEFINE_LED(Green3)
DEFINE_LED(Yellow1)
DEFINE_LED(Yellow2)

DEFINE_LED_GROUP(RedLeds)
DEFINE_LED_GROUP(YellowLeds)
DEFINE_LED_GROUP(WhiteLeds)
DEFINE_LED_GROUP(GreenLeds)
DEFINE_LED_GROUP(MiddleLeds)
DEFINE_LED_GROUP(AllLeds)

#define LeftLeds WhiteLeds
#define RightLeds RedLeds

#endif /* TANK_LED_H_ */
