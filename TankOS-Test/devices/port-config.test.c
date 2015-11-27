
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

void run_occupied_test(PinOccupation tag) {
    PinOccupation occ = pinOccupation(p);
    TEST_ASSERT_EQUAL_INT_MESSAGE(tag, occ, "Pin not occupied by right tag");
    BOOL res = occupyPin(p, tag);
    TEST_ASSERT_FALSE_MESSAGE(res, "Pin was re-occupied");
    occ = pinOccupation(p);
    TEST_ASSERT_EQUAL_INT_MESSAGE(tag, occ, "Pin not occupied by right tag (second try)");
}

void test_initially_no_occupation() {
    PinOccupation occ = pinOccupation(p);
    TEST_ASSERT_EQUAL_INT_MESSAGE(PinNoOccupation, occ, "Pin already occupied");
}

void test_occupy() {
    BOOL res = occupyPin(p, myTag1);
    TEST_ASSERT_TRUE_MESSAGE(res, "Could not occupy pin");

    res = occupyPin(p, myTag1);
    TEST_ASSERT_FALSE_MESSAGE(res, "Should not be able to occupy pin again");

    run_occupied_test(myTag1);
}

void test_deOccupy() {
    occupyPin(p, myTag1);
    BOOL res = deOccupyPin(p, myTag1);
    TEST_ASSERT_TRUE_MESSAGE(res, "Could not de-occupy pin");

    PinOccupation occupation = pinOccupation(p);
    TEST_ASSERT_EQUAL_MESSAGE(PinNoOccupation, occupation, "Pin not properly de-occupied");

    res = occupyPin(p, myTag2);
    TEST_ASSERT_TRUE_MESSAGE(res, "Could not occupy pin after de-occupying it");
    occupation = pinOccupation(p);
    TEST_ASSERT_EQUAL_MESSAGE(myTag2, occupation, "Pin no properly re-occupied");
}

void test_deOccupy_wrong() {
    occupyPin(p, myTag1);
    BOOL res = deOccupyPin(p, myTag2);
    TEST_ASSERT_FALSE_MESSAGE(res, "Should not be able to de-occupy pin");
}

void test_invalid_pin() {
    TEST_ASSERT_FALSE(occupyPin(Invalid(Pin), 11));
    TEST_ASSERT_EQUAL(PinNoOccupation, pinOccupation(Invalid(Pin)));
    TEST_ASSERT_FALSE(deOccupyPin(Invalid(Pin), 11));
}
