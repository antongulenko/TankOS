/*
 * button.test.c
 *
 *  Created on: 07.12.2012
 *      Author: Anton
 */

#include <unity.h>
#include <tank_os_common.h>
#include "fake_port.h"
#include <string.h>
#include <kernel/devices/button.h>
#include <kernel/devices/external_interrupts.h>

DEFINE_BUTTON(Btn);
DEFINE_BUTTON_IMPL(Btn);

#define TEST_INTERRUPT 1

void setUp() {
	init_fake_port();
	memset(Btn, 0, sizeof(Button));
}

void tearDown() {
}

void init_test_button(uint8_t flags) {
	INIT_BUTTON(Btn, PinTest1, flags, TEST_INTERRUPT);
}

void assertState(BOOL assumedState, BOOL assumedPullup) {
	BOOL buttonPressed = buttonStatus(Btn);
	TEST_ASSERT_EQUAL_INT_MESSAGE(assumedState, buttonPressed, "Wrong button status");
	BOOL pullupEnabled = (port & Pin1Mask) != 0;
	TEST_ASSERT_EQUAL_INT_MESSAGE(assumedPullup, pullupEnabled, "Wrong pullup state");
	BOOL isInput = (ddr & Pin1Mask) != 0;
	TEST_ASSERT_EQUAL_INT_MESSAGE(FALSE, isInput, "Button was output");
}

void test_normal_disabled() {
	init_test_button(BUTTON_NORMAL);
	pin = ~Pin1Mask;
	assertState(FALSE, FALSE);
}

void test_normal_enabled() {
	init_test_button(BUTTON_NORMAL);
	pin = Pin1Mask;
	assertState(TRUE, FALSE);
}

void test_inverted_disabled() {
	init_test_button(BUTTON_INVERTED);
	pin = Pin1Mask;
	assertState(FALSE, FALSE);
}

void test_inverted_enabled() {
	init_test_button(BUTTON_INVERTED);
	pin = ~Pin1Mask;
	assertState(TRUE, FALSE);
}

void test_pullup_disabled() {
	init_test_button(BUTTON_NEEDS_PULLUP);
	pin = ~Pin1Mask;
	assertState(FALSE, TRUE);
}

void test_pullup_enabled() {
	init_test_button(BUTTON_NEEDS_PULLUP);
	pin = Pin1Mask;
	assertState(TRUE, TRUE);
}

void test_inverted_pullup_disabled() {
	init_test_button(BUTTON_INVERTED | BUTTON_NEEDS_PULLUP);
	pin = Pin1Mask;
	assertState(FALSE, TRUE);
}

void test_inverted_pullup_enabled() {
	init_test_button(BUTTON_INVERTED | BUTTON_NEEDS_PULLUP);
	pin = ~Pin1Mask;
	assertState(TRUE, TRUE);
}

void test_interrupt_disabled() {
	init_test_button(BUTTON_USE_PIN_CHANGE_INTERRUPT);
	pin = ~Pin1Mask;
	assertState(FALSE, FALSE);
	TEST_ASSERT_EQUAL(TRUE, isPinChangeInterruptEnabled(TEST_INTERRUPT));
}

void test_interrupt_enabled() {
	init_test_button(BUTTON_USE_PIN_CHANGE_INTERRUPT);
	pin = Pin1Mask;
	assertState(TRUE, FALSE);
	TEST_ASSERT_EQUAL(TRUE, isPinChangeInterruptEnabled(TEST_INTERRUPT));
}
