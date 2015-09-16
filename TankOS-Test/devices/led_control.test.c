
#include <devices/led_control.h>
#include <devices/led.h>
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

void assertState(BOOL led1Enabled, BOOL led2Enabled, BOOL led3Enabled) {
    TEST_ASSERT_EQUAL_MESSAGE(led1Enabled, isLedEnabled(led1), "Led 1 is not in expected state");
    TEST_ASSERT_EQUAL_MESSAGE(led2Enabled, isLedEnabled(led2), "Led 2 is not in expected state");
    TEST_ASSERT_EQUAL_MESSAGE(led3Enabled, isLedEnabled(led3), "Led 3 is not in expected state");
}

void assertStateAll(BOOL allEnabled) {
    assertState(allEnabled, allEnabled, allEnabled);
}

void runticks(int ticks) {
    while (ticks-- > 0) {
        led_control_tick();
    }
}

void assertChange(int numTicks, BOOL led1, BOOL led2, BOOL led3) {
    runticks(1);
    assertState(led1, led2, led3);
    runticks(numTicks - 1);
    assertState(led1, led2, led3);
}

void assertChangeAll(int numTicks, BOOL allLeds) {
    assertChange(numTicks, allLeds, allLeds, allLeds);
}

void test_init() {
    TEST_ASSERT_EQUAL_MESSAGE(LedsDisabled, getControlledLedsState(single1), "ControlledLeds single 1 not disabled after init");
    TEST_ASSERT_EQUAL_MESSAGE(LedsDisabled, getControlledLedsState(multiple), "ControlledLeds multiple not disabled after init");
    TEST_ASSERT_EQUAL_MESSAGE(LedsDisabled, getControlledLedsState(single2), "ControlledLeds single 2 not disabled after init");
    assertStateAll(FALSE);
}

void test_control_enable() {
    controlLeds(multiple, LedsEnabled);
    assertChangeAll(5, TRUE);
    assertChangeAll(5, TRUE);
}

void test_control_disable() {
    controlLeds(multiple, LedsDisabled);
    assertChangeAll(5, FALSE);
    assertChangeAll(5, FALSE);
}

void test_control_blinking() {
    controlLeds(multiple, LedsBlinking);
    TEST_ASSERT_EQUAL_MESSAGE(LedsBlinking, getControlledLedsState(multiple), "Unexpected ControlledLeds state");
    assertChangeAll(BLINKING_TICKS, TRUE);
    assertChangeAll(BLINKING_TICKS, FALSE);
    assertChangeAll(BLINKING_TICKS, TRUE);
    assertChangeAll(BLINKING_TICKS, FALSE);
    TEST_ASSERT_EQUAL_MESSAGE(LedsBlinking, getControlledLedsState(multiple), "Unexpected ControlledLeds state");
}

void test_control_blinking_fast() {
    controlLeds(multiple, LedsBlinkingFast);
    TEST_ASSERT_EQUAL_MESSAGE(LedsBlinkingFast, getControlledLedsState(multiple), "Unexpected ControlledLeds state");
    assertChangeAll(BLINKING_FAST_TICKS, TRUE);
    assertChangeAll(BLINKING_FAST_TICKS, FALSE);
    assertChangeAll(BLINKING_FAST_TICKS, TRUE);
    assertChangeAll(BLINKING_FAST_TICKS, FALSE);
    TEST_ASSERT_EQUAL_MESSAGE(LedsBlinkingFast, getControlledLedsState(multiple), "Unexpected ControlledLeds state");
}

void test_control_flash() {
    controlLeds(multiple, LedsFlash);
    TEST_ASSERT_EQUAL_MESSAGE(LedsFlash, getControlledLedsState(multiple), "Unexpected ControlledLeds state");
    assertChangeAll(FLASH_TICKS, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(LedsDisabled, getControlledLedsState(multiple), "ControlledLeds multiple did not reset state after Flash finished");
    assertChangeAll(FLASH_TICKS, FALSE);
    assertChangeAll(FLASH_TICKS, FALSE);
}

void test_control_flash_long() {
    controlLeds(multiple, LedsLongFlash);
    TEST_ASSERT_EQUAL_MESSAGE(LedsLongFlash, getControlledLedsState(multiple), "Unexpected ControlledLeds state");
    assertChangeAll(LONG_FLASH_TICKS, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(LedsDisabled, getControlledLedsState(multiple), "ControlledLeds multiple did not reset state after Flash finished");
    assertChangeAll(LONG_FLASH_TICKS, FALSE);
    assertChangeAll(LONG_FLASH_TICKS, FALSE);
}

void test_group_run() {
    controlLeds(multiple, LedsGroupRun);
    TEST_ASSERT_EQUAL_MESSAGE(LedsGroupRun, getControlledLedsState(multiple), "Unexpected ControlledLeds state");
    assertChange(GROUP_RUN_TICKS, TRUE, FALSE, FALSE);
    assertChange(GROUP_RUN_TICKS, FALSE, TRUE, FALSE);
    assertChange(GROUP_RUN_TICKS, FALSE, FALSE, TRUE);
    TEST_ASSERT_EQUAL_MESSAGE(LedsGroupRun, getControlledLedsState(multiple), "Unexpected ControlledLeds state");
    assertChange(GROUP_RUN_TICKS, FALSE, TRUE, FALSE);
    assertChange(GROUP_RUN_TICKS, TRUE, FALSE, FALSE);
    TEST_ASSERT_EQUAL_MESSAGE(LedsDisabled, getControlledLedsState(multiple), "ControlledLeds multiple did not reset state after Group Run finished");
    assertChangeAll(GROUP_RUN_TICKS, FALSE);
    assertChangeAll(GROUP_RUN_TICKS, FALSE);
}

void test_change_1() {
    controlLeds(multiple, LedsBlinking);
    runticks(BLINKING_TICKS * 3);
    test_group_run();
}

void test_change_2() {
    controlLeds(multiple, LedsGroupRun);
    runticks(GROUP_RUN_TICKS * 3);
    test_control_flash();
}

void test_change_3() {
    controlLeds(multiple, LedsGroupRun);
    runticks(GROUP_RUN_TICKS * 3);
    test_control_enable();
}

void test_change_4() {
    controlLeds(multiple, LedsLongFlash);
    runticks(LedsLongFlash / 2);
    test_control_disable();
}

void test_multiple_1() {
    test_group_run();
    runticks(7);
    test_control_flash();
    runticks(7);
    test_control_enable();
    runticks(7);
    test_control_disable();
    test_control_blinking();
}

void test_multiple_2() {
    test_control_enable();
    test_group_run();
    test_control_blinking();
    runticks(7);
    test_group_run();
}

void test_controlled_duration() {
    controlLedsDuration(multiple, LedsBlinking, 222);
    TEST_ASSERT_EQUAL_MESSAGE(LedsBlinking, getControlledLedsState(multiple), "Unexpected ControlledLeds state");
    assertChangeAll(222, TRUE);
    assertChangeAll(222, FALSE);
    assertChangeAll(222, TRUE);
    assertChangeAll(222, FALSE);
    TEST_ASSERT_EQUAL_MESSAGE(LedsBlinking, getControlledLedsState(multiple), "Unexpected ControlledLeds state");
}
