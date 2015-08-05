/*
 * Created: 28.04.2012 11:02:16
 *  Author: Anton
 */

#include "tank_led.h"
#include <kernel/kernel_init.h>
#include <m1284P/port.h>

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

static void init_tank_leds() {
	INIT_LED(White1, pinB0)
	INIT_LED(White2, pinB1)
	INIT_LED(White3, pinB2)
	INIT_LED(White4, pinB3)
	INIT_LED(White5, pinB4)

	INIT_LED(Green1, pinB5)
	INIT_LED(Green2, pinB6)
	INIT_LED(Green3, pinB7)
	INIT_LED(Yellow1, pinD0)
	INIT_LED(Yellow2, pinD1)

	INIT_LED(Red1, pinD2)
	INIT_LED(Red2, pinD3)
	INIT_LED(Red3, pinD4)
	INIT_LED(Red4, pinD5)
	INIT_LED(Red5, pinD6)

	INIT_LED_GROUP(RedLeds, redLedsArray, 5)
	INIT_LED_GROUP(YellowLeds, yellowLedsArray, 2)
	INIT_LED_GROUP(WhiteLeds, whiteLedsArray, 5)
	INIT_LED_GROUP(GreenLeds, greenLedsArray, 3)
	INIT_LED_GROUP(MiddleLeds, middleLedsArray, 5)
	INIT_LED_GROUP(AllLeds, allLedsArray, 15)
}
KERNEL_INIT(init_tank_leds)
