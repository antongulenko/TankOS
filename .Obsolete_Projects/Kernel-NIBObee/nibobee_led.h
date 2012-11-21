/*
 * nibobee_led.h
 *
 * Created: 28.04.2012 00:56:00
 *  Author: Anton
 */ 

#ifndef NIBOBEE_LED_H_
#define NIBOBEE_LED_H_

#include <kernel/devices/led.h>

DEFINE_LED(LeftYellow)
DEFINE_LED(LeftRed)
DEFINE_LED(RightRed)
DEFINE_LED(RightYellow)
DEFINE_LED_GROUP(RedLeds)
DEFINE_LED_GROUP(YellowLeds)
DEFINE_LED_GROUP(RightLeds)
DEFINE_LED_GROUP(LeftLeds)
DEFINE_LED_GROUP(AllLeds)

#endif /* NIBOBEE_LED_H_ */