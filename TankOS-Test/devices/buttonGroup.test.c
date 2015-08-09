/*
 *  Created on: 07.12.2012
 *      Author: Anton
 */

#include <unity.h>
#include <tank_os_common.h>
#include <devices/button.h>
#include <mocks/port.h>

Button b1, b2;
Button buttonArray[2];
ButtonGroup group;

void setUp() {
	init_fake_port();
    b1 = newButton(testPin1, ButtonNormal, 1);
    b2 = newButton(testPin2, ButtonNormal, 2);
	buttonArray[0] = b1;
	buttonArray[1] = b2;

    group = newButtonGroup(buttonArray, 2);
    TEST_ASSERT_TRUE_MESSAGE(buttonGroupValid(group), "button group not valid after init");
}

void tearDown() {
	group = destroyButtonGroup(group);
    b1 = destroyButton(b1);
    b2 = destroyButton(b2);
    TEST_ASSERT_FALSE_MESSAGE(buttonGroupValid(group), "button group still valid after destroy");
    destroy_fake_port();
}

void test_illegal_group () {
    updateButtonGroup(Invalid(ButtonGroup)); // no segfault
}

void test_update_buttons() {
    updateButtonGroup(group);
    TEST_ASSERT_FALSE(wasPressed(b1));
    TEST_ASSERT_FALSE(wasPressed(b2));
    TEST_ASSERT_FALSE(wasReleased(b1));
    TEST_ASSERT_FALSE(wasReleased(b2));
    pin = testPin1_mask;
    updateButtonGroup(group);
    TEST_ASSERT_TRUE(wasPressed(b1));
    TEST_ASSERT_FALSE(wasPressed(b2));
    TEST_ASSERT_FALSE(wasReleased(b1));
    TEST_ASSERT_FALSE(wasReleased(b2));
    pin = testPin2_mask;
    updateButtonGroup(group);
    TEST_ASSERT_FALSE(wasPressed(b1));
    TEST_ASSERT_TRUE(wasPressed(b2));
    TEST_ASSERT_TRUE(wasReleased(b1));
    TEST_ASSERT_FALSE(wasReleased(b2));
    pin = 0;
    updateButtonGroup(group);
    TEST_ASSERT_FALSE(wasPressed(b1));
    TEST_ASSERT_FALSE(wasPressed(b2));
    TEST_ASSERT_FALSE(wasReleased(b1));
    TEST_ASSERT_TRUE(wasReleased(b2));
}

void test_buttonStatusMask() {
    pin = testPin1_mask;
    updateButtonGroup(group);
    TEST_ASSERT_BITS_MESSAGE(0xff, _BV(0), buttonStatusMask(group), "wrong button status mask");
}

void test_wasPressedMask() {
    pin = testPin1_mask;
    updateButtonGroup(group);
    TEST_ASSERT_BITS_MESSAGE(0xff, _BV(0), wasPressedMask(group), "wrong wasPressed mask");
}

void test_wasReleasedMask() {
    pin = testPin1_mask;
    updateButtonGroup(group);
    pin = 0;
    updateButtonGroup(group);
    TEST_ASSERT_BITS_MESSAGE(0xff, _BV(0), wasReleasedMask(group), "wrong wasReleased mask");
}
