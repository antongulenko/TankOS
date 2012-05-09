/*
 * tank_led.kernel
 *
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */ 

#ifndef _TANK_LED_KERNEL_
#define _TANK_LED_KERNEL_

#include <kernel/devices/port_m1284P.kernel.h>
#include <kernel/devices/led.kernel.h>
#include "tank_led.h"
#include <kernel/kernel_init.h>

PLed redLedsArray[] = { &Red1_, &Red2_, &Red3_, &Red4_, &Red5_ };
PLed yellowLedsArray[] = { &Yellow1_, &Yellow2_ };
PLed whiteLedsArray[] = { &White1_, &White2_, &White3_, &White4_, &White5_ };
PLed greenLedsArray[] = { &Green1_, &Green2_, &Green3_ };
PLed middleLedsArray[] = { &Yellow1_, &Yellow2_, &Green1_, &Green2_, &Green3_ };
PLed allLedsArray[] = {
				&Red1_, &Red2_, &Red3_, &Red4_, &Red5_,
				&White1_, &White2_, &White3_, &White4_, &White5_,
				&Yellow1_, &Yellow2_, &Green1_, &Green2_, &Green3_ };

void init_tank_leds() {
	
	// TODO assign correct pins

	INIT_LED(White1, PinA1)
	INIT_LED(White2, PinA1)
	INIT_LED(White3, PinA1)
	INIT_LED(White4, PinA1)
	INIT_LED(White5, PinA1)

	INIT_LED(Red1, PinA1)
	INIT_LED(Red2, PinA1)
	INIT_LED(Red3, PinA1)
	INIT_LED(Red4, PinA1)
	INIT_LED(Red5, PinA1)

	INIT_LED(Green1, PinA1)
	INIT_LED(Green2, PinA1)
	INIT_LED(Green3, PinA1)
	INIT_LED(Yellow1, PinA1)
	INIT_LED(Yellow2, PinA1)
	
	INIT_LED_GROUP(RedLeds, redLedsArray, 5)
	INIT_LED_GROUP(YellowLeds, yellowLedsArray, 2)
	INIT_LED_GROUP(WhiteLeds, whiteLedsArray, 5)
	INIT_LED_GROUP(GreenLeds, greenLedsArray, 3)
	INIT_LED_GROUP(MiddleLeds, middleLedsArray, 5)
	INIT_LED_GROUP(AllLeds, allLedsArray, 15)
}
KERNEL_INIT(init_tank_leds)

#endif