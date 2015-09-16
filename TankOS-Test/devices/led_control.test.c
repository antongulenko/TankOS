
#include <devices/led_control.h>
#include <mocks/port.h>
#include <string.h>
#include <unity.h>

Led led1, led2, led3;
Led groupArray[3];
LedGroup group;
ControlledLeds single1, multiple, single2;

// Hack to check if lists are empty
extern void *controlled_leds;
extern void *underlying_leds;

void setUp() {
    init_fake_port();
    led1 = newLed(testPin1);
    led2 = newLed(testPin2);
    led3 = newLed(testPin3);
    memcpy(groupArray, (Led[]) { led1, led2, led3 }, sizeof(groupArray));
    group = newLedGroup(groupArray, 3);

    single1 = newControlledLed(led1);
    TEST_ASSERT_TRUE_MESSAGE(controlledLedsValid(single1), "ControlledLeds single 1 not valid after init");
    multiple = newControlledLedGroup(group);
    TEST_ASSERT_TRUE_MESSAGE(controlledLedsValid(multiple), "ControlledLeds multiple not valid after init");
    single2 = newControlledLed(led2);
    TEST_ASSERT_TRUE_MESSAGE(controlledLedsValid(single2), "ControlledLeds single 2 not valid after init");
}

void tearDown() {
    single2 = destroyControlledLeds(single2);
    TEST_ASSERT_FALSE_MESSAGE(controlledLedsValid(single2), "ControlledLeds single 1 still valid after destroy");
    multiple = destroyControlledLeds(multiple);
    TEST_ASSERT_FALSE_MESSAGE(controlledLedsValid(multiple), "ControlledLeds multiple still valid after destroy");
    single1 = destroyControlledLeds(single1);
    TEST_ASSERT_FALSE_MESSAGE(controlledLedsValid(single2), "ControlledLeds single 2 still valid after destroy");

    group = destroyLedGroup(group);
    led1 = destroyLed(led1);
    led2 = destroyLed(led2);
    led3 = destroyLed(led3);
    destroy_fake_port();

    TEST_ASSERT_NULL_MESSAGE(controlled_leds, "controlled_leds is not empty after destroy!");
    TEST_ASSERT_NULL_MESSAGE(underlying_leds, "underlying_leds is not empty after destroy!");
}

void test_init() {
    TEST_ASSERT_EQUAL_MESSAGE(LedsDisabled, getControlledLedsState(single1), "ControlledLeds single 1 not disabled after init");
    TEST_ASSERT_EQUAL_MESSAGE(LedsDisabled, getControlledLedsState(multiple), "ControlledLeds multiple not disabled after init");
    TEST_ASSERT_EQUAL_MESSAGE(LedsDisabled, getControlledLedsState(single2), "ControlledLeds single 2 not disabled after init");
}
