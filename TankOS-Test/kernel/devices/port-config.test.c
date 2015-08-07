
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

PinOccupation myTag1 = 100;
PinOccupation myTag2 = 200;
ConfigData configData1 = { 1, 2, 3, 4 };
ConfigData configData2 = { 5, 6, 7, 8 };

void do_register(int run, PinOccupation tag, ConfigData data, BOOL expect_success) {
    BOOL res = registerPinConfig(p, tag, data);
    char buf[] = "Registration nr XXXXX did not work as expected";
    sprintf(buf, "Registration nr %i did not work as expected", run);
    TEST_ASSERT_EQUAL_MESSAGE(expect_success, res, buf);
}

void run_occupied_test(PinOccupation tag, ConfigData expectedData) {
    PinOccupation occ = pinOccupation(p);
    TEST_ASSERT_EQUAL_INT_MESSAGE(tag, occ, "Pin not occupied by right tag");
    BOOL res = occupyPin(p, tag);
    TEST_ASSERT_FALSE_MESSAGE(res, "Pin was re-occupied");
    occ = pinOccupation(p);
    TEST_ASSERT_EQUAL_INT_MESSAGE(tag, occ, "Pin not occupied by right tag (second try)");
    if (expectedData.data[0] != 0) {
        ConfigData data = pinConfigData(p, tag);
        TEST_ASSERT_EQUAL_MEMORY_MESSAGE(&expectedData, &data, sizeof data, "Wrong config data returned (second try)");
    }
}

void run_test(PinOccupation tag, ConfigData expectedData) {
    BOOL res = occupyPin(p, tag);
    TEST_ASSERT_TRUE_MESSAGE(res, "Could not occupy pin");
    if (expectedData.data[0] != 0) {
        ConfigData data = pinConfigData(p, tag);
        TEST_ASSERT_EQUAL_MEMORY_MESSAGE(&expectedData, &data, sizeof data, "Wrong config data returned");
    }
    run_occupied_test(tag, expectedData);
}

void test_initially_no_occupation() {
    PinOccupation occ = pinOccupation(p);
    TEST_ASSERT_EQUAL_INT_MESSAGE(PinNoOccupation, occ, "Pin already occupied");
}

void test_register_GPIO() {
    do_register(0, PinGPIO, (ConfigData) {0}, FALSE);
}

void test_GPIO() {
    run_test(PinGPIO, (ConfigData) {0});
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
    run_test(PinGPIO, (ConfigData) {0});
}

void test_occupy_directly() {
    BOOL res = occupyPinDirectly(p, myTag1, configData1);
    TEST_ASSERT_TRUE_MESSAGE(res, "Could not occupy pin");
    ConfigData data = pinConfigData(p, myTag1);
    TEST_ASSERT_EQUAL_MEMORY_MESSAGE(&configData1, &data, sizeof data, "Wrong config data returned");

    res = occupyPinDirectly(p, myTag1, configData1);
    TEST_ASSERT_FALSE_MESSAGE(res, "Should not be able to occupy pin again");

    run_occupied_test(myTag1, configData1);
}

void test_deOccupy() {
    occupyPinDirectly(p, myTag1, configData1);
    BOOL res = deOccupyPin(p, myTag1);
    TEST_ASSERT_TRUE_MESSAGE(res, "Could not de-occupy pin");

    PinOccupation occupation = pinOccupation(p);
    TEST_ASSERT_EQUAL_MESSAGE(PinNoOccupation, occupation, "Pin not properly de-occupied");

    res = occupyPinDirectly(p, myTag2, configData1);
    TEST_ASSERT_TRUE_MESSAGE(res, "Could not occupy pin after de-occupying it");
    occupation = pinOccupation(p);
    TEST_ASSERT_EQUAL_MESSAGE(myTag2, occupation, "Pin no properly re-occupied");
}

void test_deOccupy_wrong() {
    occupyPinDirectly(p, myTag1, configData1);
    BOOL res = deOccupyPin(p, myTag2);
    TEST_ASSERT_FALSE_MESSAGE(res, "Should not be able to de-occupy pin");
}
