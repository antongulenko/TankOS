
#include <unity.h>
#include <kernel/devices/led.h>
#include <string.h>
#include "fake_port.h"

DEFINE_LED(Led1)
DEFINE_LED(Led2)
DEFINE_LED(Led3)
DEFINE_LED_GROUP(Group)

DEFINE_LED_IMPL(Led1)
DEFINE_LED_IMPL(Led2)
DEFINE_LED_IMPL(Led3)

PLed ledGroup[] = { &Led1_, &Led2_, &Led3_ };

DEFINE_LED_GROUP_IMPL(Group)

void setUp() {
	init_fake_port();
	
	memset(Led1, 0, sizeof(Led));
	memset(Led2, 0, sizeof(Led));
	memset(Led3, 0, sizeof(Led));
	memset(Group, 0, sizeof(LedGroup));
	INIT_LED(Led1, PinTest1);
	INIT_LED(Led2, PinTest2);
	INIT_LED(Led3, PinTest3);
	INIT_LED_GROUP(Group, ledGroup, 3);
}

void tearDown() {
}
