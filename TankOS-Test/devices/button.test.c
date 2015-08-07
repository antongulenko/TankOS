/*
 *  Created on: 07.12.2012
 *      Author: Anton
 */

#include <unity.h>
#include <tank_os_common.h>
#include <mocks/port.h>
#include <string.h>
#include <devices/button.h>
#include <kernel/devices/external_interrupts.h>

Button Btn;
#define TEST_INTERRUPT 1

void setUp() {
	init_fake_port();
}

void tearDown() {
    Btn = destroyButton(Btn);
    TEST_ASSERT_FALSE_MESSAGE(buttonValid(Btn), "Button still valid after destroy");
    TEST_ASSERT_EQUAL_MESSAGE(PinNoOccupation, pinOccupation(testPin1), "pin not deoccupied by button");
    destroy_fake_port();
}

void init_test_button(uint8_t flags) {
    Btn = newButton(testPin1, flags, TEST_INTERRUPT);
    TEST_ASSERT_TRUE_MESSAGE(buttonValid(Btn), "Button not valid after init");
    TEST_ASSERT_EQUAL_MESSAGE(PinButtonInput, pinOccupation(testPin1), "pin not occupied by button");
}

void assertState(BOOL assumedState, BOOL assumedPullup) {
	BOOL buttonPressed = buttonStatus(Btn);
	TEST_ASSERT_EQUAL_INT_MESSAGE(assumedState, buttonPressed, "Wrong button status");
	BOOL pullupEnabled = (port & testPin1_mask) != 0;
	TEST_ASSERT_EQUAL_INT_MESSAGE(assumedPullup, pullupEnabled, "Wrong pullup state");
	BOOL isInput = (ddr & testPin1_mask) != 0;
	TEST_ASSERT_EQUAL_INT_MESSAGE(FALSE, isInput, "Button was output");
}

void test_button_occupy_failed() {
    occupyPinDirectly(testPin1, 50, EmptyConfigData);
    Btn = newButton(testPin1, ButtonNormal, TEST_INTERRUPT);
    TEST_ASSERT_FALSE_MESSAGE(IsValid(Btn), "button should not be valid");
    TEST_ASSERT_FALSE_MESSAGE(buttonValid(Btn), "button should not pass validity check");
    deOccupyPin(testPin1, 50);
}

void test_normal_disabled() {
	init_test_button(ButtonNormal);
	pin = ~testPin1_mask;
	assertState(FALSE, FALSE);
}

void test_normal_enabled() {
	init_test_button(ButtonNormal);
	pin = testPin1_mask;
	assertState(TRUE, FALSE);
}

void test_inverted_disabled() {
	init_test_button(ButtonInverted);
	pin = testPin1_mask;
	assertState(FALSE, FALSE);
}

void test_inverted_enabled() {
	init_test_button(ButtonInverted);
	pin = ~testPin1_mask;
	assertState(TRUE, FALSE);
}

void test_pullup_disabled() {
	init_test_button(ButtonNeedsPullup);
	pin = ~testPin1_mask;
	assertState(FALSE, TRUE);
}

void test_pullup_enabled() {
	init_test_button(ButtonNeedsPullup);
	pin = testPin1_mask;
	assertState(TRUE, TRUE);
}

void test_inverted_pullup_disabled() {
	init_test_button(ButtonInverted | ButtonNeedsPullup);
	pin = testPin1_mask;
	assertState(FALSE, TRUE);
}

void test_inverted_pullup_enabled() {
	init_test_button(ButtonInverted | ButtonNeedsPullup);
	pin = ~testPin1_mask;
	assertState(TRUE, TRUE);
}

void test_interrupt_disabled() {
	init_test_button(ButtonUsePinChangeInterrupt);
	pin = ~testPin1_mask;
	assertState(FALSE, FALSE);
	TEST_ASSERT_EQUAL(TRUE, isPinChangeInterruptEnabled(TEST_INTERRUPT));
}

void test_interrupt_enabled() {
	init_test_button(ButtonUsePinChangeInterrupt);
	pin = testPin1_mask;
	assertState(TRUE, FALSE);
	TEST_ASSERT_EQUAL(TRUE, isPinChangeInterruptEnabled(TEST_INTERRUPT));
}
