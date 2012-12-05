
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

void assertState(uint8_t exp_pin, uint8_t exp_port, uint8_t exp_ddr) {
	TEST_ASSERT_EQUAL_HEX(exp_pin, pin);
	TEST_ASSERT_EQUAL_HEX(exp_port, port);
	TEST_ASSERT_EQUAL_HEX(exp_ddr, ddr);
}

#define ALL_LEDS _BV(PINTest1) | _BV(PINTest2) | _BV(PINTest3)
// Bits in a 16 bit word, starting from MSB
#define LED1 (1 << 15)
#define LED2 (1 << 14)
#define LED3 (1 << 13)

void test_disabledAndOutputAfterInit() {
	assertState(0, 0, ALL_LEDS);
}

void test_enableOne() {
	enableLed(Led1);
	assertState(0, _BV(PINTest1), ALL_LEDS);
}

void test_enableTwo() {
	enableLed(Led1);
	enableLed(Led2);
	assertState(0, _BV(PINTest1) | _BV(PINTest2), ALL_LEDS);
}

void test_disableOne() {
	disableLed(Led1);
	assertState(0, 0, ALL_LEDS);
}

void test_disableTwo() {
	disableLed(Led1);
	disableLed(Led2);
	assertState(0, 0, ALL_LEDS);
}

void test_redisableOne() {
	enableLed(Led1);
	disableLed(Led1);
	assertState(0, 0, ALL_LEDS);
}

void test_redisableTwo() {
	enableLed(Led1);
	enableLed(Led2);
	disableLed(Led1);
	disableLed(Led2);
	assertState(0, 0, ALL_LEDS);
}

void test_keepOneEnabled() {
	enableLed(Led1);
	enableLed(Led2);
	disableLed(Led2);
	assertState(0, _BV(PINTest1), ALL_LEDS);
}

void test_setLedOn() {
	setLed(Led1, TRUE);
	assertState(0, _BV(PINTest1), ALL_LEDS);
}

void test_setLedOff() {
	setLed(Led1, TRUE);
	setLed(Led1, FALSE);
	assertState(0, 0, ALL_LEDS);
}

void test_group_enable() {
	enableLeds(Group);
	assertState(0, ALL_LEDS, ALL_LEDS);
}

void test_group_disable() {
	disableLeds(Group);
	assertState(0, 0, ALL_LEDS);
}

void test_group_redisable() {
	enableLeds(Group);
	disableLeds(Group);
	assertState(0, 0, ALL_LEDS);
}

void test_group_set_1() {
	setLeds(Group, 0xFFFF);
	assertState(0, ALL_LEDS, ALL_LEDS);
}
