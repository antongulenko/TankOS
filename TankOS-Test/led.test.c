
#include <unity.h>
#include <kernel/devices/led.h>
#include <string.h>
#include "fake_port.h"
#include "fake_delay.h"
#include <anton_std.h>

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
	reset_test_delay();
	
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

#define ALL_LEDS (Pin1Mask | Pin2Mask | Pin3Mask)
// Bits in a 16 bit word, starting from MSB
#define LED1 (1 << 0)
#define LED2 (1 << 1)
#define LED3 (1 << 2)

void assertDelayedMS(uint32_t delayedMs, uint16_t delayCalls) {
	TEST_ASSERT_EQUAL_INT(delayedMs, DelayedMS);
	TEST_ASSERT_EQUAL_INT(delayCalls, DelayMSCalled);
	assertState(0, 0, ALL_LEDS);
}

void test_disabledAndOutputAfterInit() {
	assertState(0, 0, ALL_LEDS);
}

void test_enableOne() {
	enableLed(Led1);
	assertState(0, Pin1Mask, ALL_LEDS);
}

void test_enableTwo() {
	enableLed(Led1);
	enableLed(Led2);
	assertState(0, Pin1Mask | Pin2Mask, ALL_LEDS);
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
	assertState(0, Pin1Mask, ALL_LEDS);
}

void test_setLedOn() {
	setLed(Led1, TRUE);
	assertState(0, Pin1Mask, ALL_LEDS);
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

void test_group_set_all() {
	setLeds(Group, 0xFFFF);
	assertState(0, ALL_LEDS, ALL_LEDS);
}

void test_group_set_2() {
	setLeds(Group, LED1 | LED2);
	assertState(0, Pin1Mask | Pin2Mask, ALL_LEDS);
}

void test_group_set_3() {
	setLeds(Group, LED1 | LED2 | LED3);
	assertState(0, ALL_LEDS, ALL_LEDS);
}

void test_group_set_someOthers() {
	setLeds(Group, LED1 | ~(LED2 | LED3));
	assertState(0, Pin1Mask, ALL_LEDS);
}

void test_flashLed() {
	flashLed(Led1, 100);
	assertDelayedMS(100, 1);
}

void test_flashLed_2() {
	flashLed(Led1, 100);
	flashLed(Led2, 200);
	assertDelayedMS(300, 2);
}

void test_flashAllLeds() {
	flashAllLeds(Group, 100);
	assertDelayedMS(100, 1);
}

void test_flashAllLeds_2() {
	flashAllLeds(Group, 100);
	flashAllLeds(Group, 200);
	assertDelayedMS(300, 2);
}

void test_flashLeds() {
	flashLeds(Group, LED1 | LED2, 100);
	assertDelayedMS(100, 1);
}

void test_flashLeds_2() {
	flashLeds(Group, LED1 | LED2, 100);
	flashLeds(Group, LED1 | LED2, 200);
	assertDelayedMS(300, 2);
}

void test_blinkLed_zero() {
	blinkLed(Led1, 0);
	assertDelayedMS(0, 0);
}

void test_blinkLed_one() {
	blinkLed(Led1, 1);
	assertDelayedMS(2 * 200, 2);
}

void test_blinkLed_n() {
	blinkLed(Led1, 5);
	assertDelayedMS(5 * 2 * 200, 5 * 2);
}

void test_blinkAllLeds_zero() {
	blinkAllLeds(Group, 0);
	assertDelayedMS(0, 0);
}

void test_blinkAllLeds_one() {
	blinkAllLeds(Group, 1);
	assertDelayedMS(2 * 200, 2);
}

void test_blinkAllLeds_n() {
	blinkAllLeds(Group, 5);
	assertDelayedMS(5 * 2 * 200, 5 * 2);
}

void test_blinkLeds_zero() {
	blinkLeds(Group, LED1 | LED2, 0);
	assertDelayedMS(0, 0);
}

void test_blinkLeds_one() {
	blinkLeds(Group, LED1 | LED2, 1);
	assertDelayedMS(2 * 200, 2);
}

void test_blinkLeds_n() {
	blinkLeds(Group, LED1 | LED2, 5);
	assertDelayedMS(5 * 2 * 200, 5 * 2);
}

void test_blink_byte() {
	// This is a too simple test, nevermind..
	blinkByte(Group, Group, 5);
	assertDelayedMS(1500 + 700 + 1200 + 1200, 2 + 2 + 5 + 5);
}
