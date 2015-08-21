
#include <unity.h>
#include <string.h>
#include <tank_os_common.h>
#include <mocks/port.h>

void setUp() {
	init_fake_port();
}

void tearDown() {
    destroy_fake_port();
}

void assertState(uint8_t exp_pin, uint8_t exp_port, uint8_t exp_ddr) {
	TEST_ASSERT_EQUAL_HEX(exp_pin, pin);
	TEST_ASSERT_EQUAL_HEX(exp_port, port);
	TEST_ASSERT_EQUAL_HEX(exp_ddr, ddr);
}

void test_nothingSetAfterInit() {
	assertState(0, 0, 0);
}

void test_setPortOutput() {
	setPortOutput(testPort);
	assertState(0, 0, 0xFF);
}

void test_setPortOutput_preset() {
	ddr = 0xaa;
	setPortOutput(testPort);
	assertState(0, 0, 0xFF);
}

void test_setPortInput() {
	setPortInput(testPort);
	assertState(0, 0, 0);
}

void test_setPortInput_preset() {
	ddr = 0xaa;
	setPortInput(testPort);
	assertState(0, 0, 0);
}

void test_setPinOutput_one() {
	setPinOutput(testPin1);
	assertState(0, 0, testPin1_mask);
}

void test_setPinOutput_two() {
	setPinOutput(testPin1);
	setPinOutput(testPin2);
	assertState(0, 0, testPin1_mask | testPin2_mask);
}

void test_setPinInput_one() {
	ddr = 0xFF;
	setPinInput(testPin1);
	assertState(0, 0, ~testPin1_mask);
}

void test_setPinInput_two() {
	ddr = 0xFF;
	setPinInput(testPin1);
	setPinInput(testPin2);
	assertState(0, 0, ~(testPin1_mask | testPin2_mask));
}

void test_writePort() {
	writePort(testPort, 0xda);
	assertState(0, 0xda, 0);
}

void test_readPort() {
	pin = 0xca;
	uint8_t val = readPort(testPort);
	assertState(0xca, 0, 0);
	TEST_ASSERT_EQUAL_HEX(0xca, val);
}

void test_writePin_one() {
	writePin(testPin1, TRUE);
	assertState(0, testPin1_mask, 0);
}

void test_writePin_two() {
	writePin(testPin1, TRUE);
	writePin(testPin2, TRUE);
	assertState(0, testPin1_mask | testPin2_mask, 0);
}

void test_setPinOne_one() {
	setPinOne(testPin1);
	assertState(0, testPin1_mask, 0);
}

void test_setPinOne_two() {
	setPinOne(testPin1);
	setPinOne(testPin2);
	assertState(0, testPin1_mask | testPin2_mask, 0);
}

void test_setPinZero_one() {
	port = 0xFF;
	setPinZero(testPin1);
	assertState(0, ~testPin1_mask, 0);
}

void test_setPinZero_two() {
	port = 0xFF;
	setPinZero(testPin1);
	setPinZero(testPin2);
	assertState(0, ~(testPin1_mask | testPin2_mask), 0);
}

void test_readPin_1() {
	pin = testPin1_mask;
	BOOL val = readPin(testPin1);
	TEST_ASSERT_EQUAL_INT(TRUE, val);
	assertState(testPin1_mask, 0, 0);
}

void test_readPin_0() {
	pin = ~(testPin1_mask);
	BOOL val = readPin(testPin1);
	TEST_ASSERT_EQUAL_INT(FALSE, val);
	assertState(~testPin1_mask, 0, 0);
}

void test_isPinOutputHigh() {
    port = testPin1_mask;
    TEST_ASSERT_TRUE_MESSAGE(isPinOutputHigh(testPin1), "pin output not reported high");
}
