/*
 * nibobee_led.kernel
 *
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */ 

#ifndef _NIBOBEE_LED_KERNEL_
#define _NIBOBEE_LED_KERNEL_

#include <kernel/devices/port_m1284P.kernel.h>
#include <kernel/devices/led.kernel.h>
#include "nibobee_led.h"
#include <kernel/kernel_init.h>

PLed redLedsArray[] = { &LeftRed_, &RightRed_ };
PLed yellowLedsArray[] = { &LeftYellow_, &RightYellow_ };
PLed rightLedsArray[] = { &RightYellow_, &RightRed_ };
PLed leftLedsArray[] = { &LeftYellow_, &LeftRed_ };
PLed allLedsArray[] = { &LeftYellow_, &LeftRed_, &RightRed_, &RightYellow_ };

void init_nibobee_leds() {
	INIT_LED(LeftYellow, PinB0)
	INIT_LED(LeftRed, PinB1)
	INIT_LED(RightRed, PinB2)
	INIT_LED(RightYellow, PinB3)
	
	INIT_LED_GROUP(RedLeds, redLedsArray, 2)
	INIT_LED_GROUP(YellowLeds, yellowLedsArray, 2)
	INIT_LED_GROUP(RightLeds, rightLedsArray, 2)
	INIT_LED_GROUP(LeftLeds, leftLedsArray, 2)
	INIT_LED_GROUP(AllLeds, allLedsArray, 4)
}
KERNEL_INIT(init_nibobee_leds)

#endif