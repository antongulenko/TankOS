/*
 * button.test.c
 *
 *  Created on: 07.12.2012
 *      Author: Anton
 */

#include <kernel/devices/button.h>
#include <unity.h>
#include "fake_port.h"
#include "fake_delay.h"
#include <anton_std.h>
#include <string.h>

DEFINE_BUTTON(Btn);
DEFINE_BUTTON_IMPL(Btn);

void setUp() {
	init_fake_port();
	reset_test_delay();
	memset(Btn, 0, sizeof(Button));
}

void tearDown() {
}

void init_test_button(uint8_t flags) {
	INIT_BUTTON(Btn, PinTest1, flags, 1);
}

void assertState(BOOL assumedState, BOOL assumedPullup) {
	BOOL buttonPressed = buttonStatus(Btn);
	TEST_ASSERT_EQUAL_INT_MESSAGE(assumedState, buttonPressed, "Wrong button status");
	BOOL pullupEnabled = (port & PIN1) != 0;
	TEST_ASSERT_EQUAL_INT_MESSAGE(assumedPullup, pullupEnabled, "Wrong pullup state");
	BOOL isInput = (ddr & PIN1) != 0;
	TEST_ASSERT_EQUAL_INT_MESSAGE(FALSE, isInput, "Button was output");
}

void test_normal_disabled() {
	init_test_button(BUTTON_NORMAL);
	pin = ~PIN1;
	assertState(FALSE, FALSE);
}

void test_normal_enabled() {
	init_test_button(BUTTON_NORMAL);
	pin = PIN1;
	assertState(TRUE, FALSE);
}

void test_inverted_disabled() {
	init_test_button(BUTTON_INVERTED);
	pin = PIN1;
	assertState(FALSE, FALSE);
}

void test_inverted_enabled() {
	init_test_button(BUTTON_INVERTED);
	pin = ~PIN1;
	assertState(TRUE, FALSE);
}

void test_pullup_disabled() {
	init_test_button(BUTTON_NEEDS_PULLUP);
	pin = ~PIN1;
	assertState(FALSE, TRUE);
}

void test_pullup_enabled() {
	init_test_button(BUTTON_NEEDS_PULLUP);
	pin = PIN1;
	assertState(TRUE, TRUE);
}

void test_inverted_pullup_disabled() {
	init_test_button(BUTTON_INVERTED | BUTTON_NEEDS_PULLUP);
	pin = PIN1;
	assertState(FALSE, TRUE);
}

void test_inverted_pullup_enabled() {
	init_test_button(BUTTON_INVERTED | BUTTON_NEEDS_PULLUP);
	pin = ~PIN1;
	assertState(TRUE, TRUE);
}

void test_interrupt_disabled() {
	init_test_button(BUTTON_USE_PIN_CHANGE_INTERRUPT);
	pin = ~PIN1;
	assertState(FALSE, FALSE);
	//TEST_ASSERT_BITS()
}

void test_interrupt_enabled() {
	init_test_button(BUTTON_USE_PIN_CHANGE_INTERRUPT);
	pin = PIN1;
	assertState(TRUE, FALSE);
}
