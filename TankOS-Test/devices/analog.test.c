#include <unity.h>
#include <tank_os_common.h>
#include <string.h>
#include <devices/analog.h>

AnalogInput analog1, analog2;
int analog1started, analog2started;
BOOL analog1destroyed, analog2destroyed;
uint16_t analog1value, analog2value;
BOOL expect_conversion_start;

void setUp() {
    analog1started = analog2started = 0;
    analog1destroyed = analog2destroyed = FALSE;
    analog1value = 200;
    analog2value = 400;
    expect_conversion_start = TRUE;
}

void triggerConversions() {
    TEST_ASSERT_FALSE(analogInputCycleRunning());
    analogInputReadValues();
    TEST_ASSERT_FALSE(analogInputCycleRunning());
}

void tearDown() {
    expect_conversion_start = FALSE;
    if (IsValid(analog1)) {
        analog1 = destroyAnalogInput(analog1);
        TEST_ASSERT_FALSE_MESSAGE(analogInputValid(analog1), "AnalogInput still valid after destroy");
        TEST_ASSERT_FALSE_MESSAGE(IsValid(analog1), "AnalogInput still valid after destroy");
        TEST_ASSERT_TRUE_MESSAGE(analog1destroyed, "AnalogInput descriptor was not destroyed");
    }
    if (IsValid(analog2)) {
        analog2 = destroyAnalogInput(analog2);
        TEST_ASSERT_FALSE_MESSAGE(analogInputValid(analog2), "AnalogInput still valid after destroy");
        TEST_ASSERT_FALSE_MESSAGE(IsValid(analog2), "AnalogInput still valid after destroy");
        TEST_ASSERT_TRUE_MESSAGE(analog2destroyed, "AnalogInput descriptor was not destroyed");
    }
    // Make sure no conversions are started anymore
    triggerConversions();
    triggerConversions();
    triggerConversions();
}

void analogInput_impl_startConversion(void *descriptor) {
    TEST_ASSERT_TRUE_MESSAGE(expect_conversion_start, "Conversion should not be started anymore");
    TEST_ASSERT_TRUE(analogInputCycleRunning());

    if ((int) descriptor == 1) {
        analog1started++;
        analogInputConversionFinished(analog1value); // This should actually not be done recursively, rather asynchronously
    } else if ((int) descriptor == 2) {
        analog2started++;
        analogInputConversionFinished(analog2value); // This should actually not be done recursively, rather asynchronously
    } else {
        TEST_FAIL_MESSAGE("Illegal descriptor pointer");
    }
}

void analogInput_impl_destroy(void *descriptor) {
    if ((int) descriptor == 1) {
        analog1destroyed = TRUE;
    } else if ((int) descriptor == 2) {
        analog2destroyed = TRUE;
    } else {
        TEST_FAIL_MESSAGE("Illegal descriptor pointer");
    }
}

static void create1() {
    analog1 = newAnalogInput((void*) 1);
    TEST_ASSERT_TRUE_MESSAGE(analogInputValid(analog1), "AnalogInput not valid after create");
    TEST_ASSERT_TRUE_MESSAGE(IsValid(analog1), "AnalogInput not valid after create");
    TEST_ASSERT_EQUAL_MESSAGE(0, analogInputValue(analog1), "AnalogInput has value after create");
}

static void create2() {
    analog2 = newAnalogInput((void*) 2);
    TEST_ASSERT_TRUE_MESSAGE(analogInputValid(analog2), "AnalogInput not valid after create");
    TEST_ASSERT_TRUE_MESSAGE(IsValid(analog2), "AnalogInput not valid after create");
    TEST_ASSERT_EQUAL_MESSAGE(0, analogInputValue(analog2), "AnalogInput has value after create");
}

void test_create1() {
    create1();
}

void test_create2() {
    create1();
    create2();
}

void test_cycle_one() {
    create1();
    triggerConversions();
    TEST_ASSERT_EQUAL(1, analog1started);
    TEST_ASSERT_EQUAL(0, analog2started);
    TEST_ASSERT_EQUAL(analog1value, analogInputValue(analog1));
    TEST_ASSERT_EQUAL(0, analogInputValue(analog2));

    // Another round
    analog1value = 1000;
    triggerConversions();
    TEST_ASSERT_EQUAL(2, analog1started);
    TEST_ASSERT_EQUAL(0, analog2started);
    TEST_ASSERT_EQUAL(analog1value, analogInputValue(analog1));
    TEST_ASSERT_EQUAL(0, analogInputValue(analog2));
}

void test_cycle_two() {
    create1();
    create2();

    triggerConversions();
    TEST_ASSERT_EQUAL(1, analog1started);
    TEST_ASSERT_EQUAL(1, analog2started);
    TEST_ASSERT_EQUAL(analog1value, analogInputValue(analog1));
    TEST_ASSERT_EQUAL(analog2value, analogInputValue(analog2));

    // Another round
    analog1value = 1000;
    analog2value = 2000;
    triggerConversions();
    triggerConversions();
    triggerConversions();
    TEST_ASSERT_EQUAL(4, analog1started);
    TEST_ASSERT_EQUAL(4, analog2started);
    TEST_ASSERT_EQUAL(analog1value, analogInputValue(analog1));
    TEST_ASSERT_EQUAL(analog2value, analogInputValue(analog2));
}

void test_cycle_after_destroy() {
    create1();
    triggerConversions();
    TEST_ASSERT_EQUAL(1, analog1started);
    TEST_ASSERT_EQUAL(0, analog2started);

    create2();
    triggerConversions();
    TEST_ASSERT_EQUAL(2, analog1started);
    TEST_ASSERT_EQUAL(1, analog2started);

    analog1 = destroyAnalogInput(analog1);
    triggerConversions();
    TEST_ASSERT_EQUAL(2, analog1started);
    TEST_ASSERT_EQUAL(2, analog2started);

    analog2 = destroyAnalogInput(analog2);
    triggerConversions();
    triggerConversions();
    triggerConversions();
    TEST_ASSERT_EQUAL(2, analog1started);
    TEST_ASSERT_EQUAL(2, analog2started);
}
