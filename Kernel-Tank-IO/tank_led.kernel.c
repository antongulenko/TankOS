/*
 * tank_led.kernel
 *
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */

#include "tank_led.h"
#include <kernel/kernel_init.h>
#include <kernel/devices/port_m1284P.h>

DEFINE_LED_IMPL(White1)
DEFINE_LED_IMPL(White2)
DEFINE_LED_IMPL(White3)
DEFINE_LED_IMPL(White4)
DEFINE_LED_IMPL(White5)

DEFINE_LED_IMPL(Red1)
DEFINE_LED_IMPL(Red2)
DEFINE_LED_IMPL(Red3)
DEFINE_LED_IMPL(Red4)
DEFINE_LED_IMPL(Red5)

DEFINE_LED_IMPL(Green1)
DEFINE_LED_IMPL(Green2)
DEFINE_LED_IMPL(Green3)
DEFINE_LED_IMPL(Yellow1)
DEFINE_LED_IMPL(Yellow2)

DEFINE_LED_GROUP_IMPL(RedLeds)
DEFINE_LED_GROUP_IMPL(YellowLeds)
DEFINE_LED_GROUP_IMPL(WhiteLeds)
DEFINE_LED_GROUP_IMPL(GreenLeds)
DEFINE_LED_GROUP_IMPL(MiddleLeds)
DEFINE_LED_GROUP_IMPL(AllLeds)

PLed redLedsArray[] = { &Red1_, &Red2_, &Red3_, &Red4_, &Red5_ };
PLed yellowLedsArray[] = { &Yellow1_, &Yellow2_ };
PLed whiteLedsArray[] = { &White1_, &White2_, &White3_, &White4_, &White5_ };
PLed greenLedsArray[] = { &Green1_, &Green2_, &Green3_ };
PLed middleLedsArray[] = { &Green1_, &Green2_, &Green3_, &Yellow1_, &Yellow2_ };
PLed allLedsArray[] = {
				&White1_, &White2_, &White3_, &White4_, &White5_,
				&Green1_, &Green2_, &Green3_, &Yellow1_, &Yellow2_,
				&Red1_, &Red2_, &Red3_, &Red4_, &Red5_ };

static __attribute__ ((noinline)) void init_tank_leds() {
	INIT_LED(White1, PinB0)
	INIT_LED(White2, PinB1)
	INIT_LED(White3, PinB2)
	INIT_LED(White4, PinB3)
	INIT_LED(White5, PinB4)

	INIT_LED(Green1, PinB5)
	INIT_LED(Green2, PinB6)
	INIT_LED(Green3, PinB7)
	INIT_LED(Yellow1, PinD0)
	INIT_LED(Yellow2, PinD1)

	INIT_LED(Red1, PinD2)
	INIT_LED(Red2, PinD3)
	INIT_LED(Red3, PinD4)
	INIT_LED(Red4, PinD5)
	INIT_LED(Red5, PinD6)
	
	INIT_LED_GROUP(RedLeds, redLedsArray, 5)
	INIT_LED_GROUP(YellowLeds, yellowLedsArray, 2)
	INIT_LED_GROUP(WhiteLeds, whiteLedsArray, 5)
	INIT_LED_GROUP(GreenLeds, greenLedsArray, 3)
	INIT_LED_GROUP(MiddleLeds, middleLedsArray, 5)
	INIT_LED_GROUP(AllLeds, allLedsArray, 15)
}
KERNEL_INIT(init_tank_leds)
