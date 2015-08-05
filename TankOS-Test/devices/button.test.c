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

DEFINE_BUTTON(Btn);
DEFINE_BUTTON_IMPL(Btn);

#define TEST_INTERRUPT 1

void setUp() {
	init_fake_port();
	memset(Btn, 0, sizeof(Button));
}

void tearDown() {
    destroy_fake_port();
}

void init_test_button(uint8_t flags) {
	INIT_BUTTON(Btn, testPin1, flags, TEST_INTERRUPT);
}

void assertState(BOOL assumedState, BOOL assumedPullup) {
	BOOL buttonPressed = buttonStatus(Btn);
	TEST_ASSERT_EQUAL_INT_MESSAGE(assumedState, buttonPressed, "Wrong button status");
	BOOL pullupEnabled = (port & testPin1_mask) != 0;
	TEST_ASSERT_EQUAL_INT_MESSAGE(assumedPullup, pullupEnabled, "Wrong pullup state");
	BOOL isInput = (ddr & testPin1_mask) != 0;
	TEST_ASSERT_EQUAL_INT_MESSAGE(FALSE, isInput, "Button was output");
}

void test_normal_disabled() {
	init_test_button(BUTTON_NORMAL);
	pin = ~testPin1_mask;
	assertState(FALSE, FALSE);
}

void test_normal_enabled() {
	init_test_button(BUTTON_NORMAL);
	pin = testPin1_mask;
	assertState(TRUE, FALSE);
}

void test_inverted_disabled() {
	init_test_button(BUTTON_INVERTED);
	pin = testPin1_mask;
	assertState(FALSE, FALSE);
}

void test_inverted_enabled() {
	init_test_button(BUTTON_INVERTED);
	pin = ~testPin1_mask;
	assertState(TRUE, FALSE);
}

void test_pullup_disabled() {
	init_test_button(BUTTON_NEEDS_PULLUP);
	pin = ~testPin1_mask;
	assertState(FALSE, TRUE);
}

void test_pullup_enabled() {
	init_test_button(BUTTON_NEEDS_PULLUP);
	pin = testPin1_mask;
	assertState(TRUE, TRUE);
}

void test_inverted_pullup_disabled() {
	init_test_button(BUTTON_INVERTED | BUTTON_NEEDS_PULLUP);
	pin = testPin1_mask;
	assertState(FALSE, TRUE);
}

void test_inverted_pullup_enabled() {
	init_test_button(BUTTON_INVERTED | BUTTON_NEEDS_PULLUP);
	pin = ~testPin1_mask;
	assertState(TRUE, TRUE);
}

void test_interrupt_disabled() {
	init_test_button(BUTTON_USE_PIN_CHANGE_INTERRUPT);
	pin = ~testPin1_mask;
	assertState(FALSE, FALSE);
	TEST_ASSERT_EQUAL(TRUE, isPinChangeInterruptEnabled(TEST_INTERRUPT));
}

void test_interrupt_enabled() {
	init_test_button(BUTTON_USE_PIN_CHANGE_INTERRUPT);
	pin = testPin1_mask;
	assertState(TRUE, FALSE);
	TEST_ASSERT_EQUAL(TRUE, isPinChangeInterruptEnabled(TEST_INTERRUPT));
}
