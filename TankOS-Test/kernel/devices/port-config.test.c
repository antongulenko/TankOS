
#include <unity.h>
#include <string.h>
#include <tank_os_common.h>
#include <mocks/port.h>
#include <stdio.h>

Pin p;

void setUp() {
    init_fake_port();
    p = testPin1;
}

void tearDown() {
    destroy_fake_port();
    p = Invalid(Pin);
}

PinConfigTag myTag1 = 100;
PinConfigTag myTag2 = 200;
byte configData1[2]; // Content doesn't matter
byte configData2[2];

void do_register(int run, PinConfigTag tag, void *data, BOOL expect_success) {
    BOOL res = registerPinConfig(p, tag, data);
    char buf[] = "Registration nr XXXXX did not work as expected";
    sprintf(buf, "Registration nr %i did not work as expected", run);
    TEST_ASSERT_EQUAL_MESSAGE(expect_success, res, buf);
}

void run_test(PinConfigTag tag, void *expectedData) {
    BOOL res = occupyPin(p, tag);
    TEST_ASSERT_TRUE_MESSAGE(res, "Could not occupy pin");
    if (expectedData) {
        void *data = pinConfigData(p, tag);
        TEST_ASSERT_EQUAL_PTR_MESSAGE(expectedData, data, "Wrong config data returned");
    }
    PinConfigTag occ = pinOccupation(p);
    TEST_ASSERT_EQUAL_INT_MESSAGE(tag, occ, "Pin not occupied by right tag");
    res = occupyPin(p, tag);
    TEST_ASSERT_FALSE_MESSAGE(res, "Pin was re-occupied");
    occ = pinOccupation(p);
    TEST_ASSERT_EQUAL_INT_MESSAGE(tag, occ, "Pin not occupied by right tag (second try)");
    if (expectedData) {
        void *data = pinConfigData(p, tag);
        TEST_ASSERT_EQUAL_PTR_MESSAGE(expectedData, data, "Wrong config data returned (second try)");
    }
}

void test_initially_no_occupation() {
    PinConfigTag occ = pinOccupation(p);
    TEST_ASSERT_EQUAL_INT_MESSAGE(PinNoOccupation, occ, "Pin already occupied");
}

void test_register_GPIO() {
    do_register(0, PinGPIO, NULL, FALSE);
}

void test_GPIO() {
    run_test(PinGPIO, NULL);
}

void test_custom_register() {
    do_register(1, myTag1, configData1, TRUE);
    do_register(2, myTag1, configData1, FALSE);
    do_register(3, myTag2, configData2, TRUE);
    do_register(4, myTag2, configData2, FALSE);
    do_register(5, myTag1, configData1, FALSE);
}

void test_custom_occupy_1() {
    do_register(0, myTag1, configData1, TRUE);
    run_test(myTag1, configData1);
}

void test_custom_occupy_2() {
    do_register(1, myTag1, configData1, TRUE);
    do_register(2, myTag2, configData2, TRUE);
    run_test(myTag2, configData2);
}

void test_custom_occupy_3() {
    do_register(1, myTag1, configData1, TRUE);
    do_register(2, myTag2, configData2, TRUE);
    run_test(myTag1, configData1);
}

void test_gpio_with_custom_config() {
    do_register(1, myTag1, configData1, TRUE);
    do_register(2, myTag2, configData2, TRUE);
    run_test(PinGPIO, NULL);
}
