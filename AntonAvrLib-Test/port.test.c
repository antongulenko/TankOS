
#include <unity.h>
#include <string.h>
#include <anton_std.h>
#include "fake_port.h"

void setUp() {
	init_fake_port();
}

void tearDown() {
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
	setPortOutput(PortTest);
	assertState(0, 0, 0xFF);
}

void test_setPortOutput_preset() {
	ddr = 0xaa;
	setPortOutput(PortTest);
	assertState(0, 0, 0xFF);
}

void test_setPortInput() {
	setPortInput(PortTest);
	assertState(0, 0, 0);
}

void test_setPortInput_preset() {
	ddr = 0xaa;
	setPortInput(PortTest);
	assertState(0, 0, 0);
}

void test_setPinOutput_one() {
	setPinOutput(PinTest1);
	assertState(0, 0, 1 << PINTest1);
}

void test_setPinOutput_two() {
	setPinOutput(PinTest1);
	setPinOutput(PinTest2);
	assertState(0, 0, (1 << PINTest1) | (1 << PINTest2));
}

void test_setPinInput_one() {
	ddr = 0xFF;
	setPinInput(PinTest1);
	assertState(0, 0, ~(1 << PINTest1));
}

void test_setPinInput_two() {
	ddr = 0xFF;
	setPinInput(PinTest1);
	setPinInput(PinTest2);
	assertState(0, 0, ~((1 << PINTest1) | (1 << PINTest2)));
}

void test_writePort() {
	writePort(PortTest, 0xda);
	assertState(0, 0xda, 0);
}

void test_readPort() {
	pin = 0xca;
	uint8_t val = readPort(PortTest);
	assertState(0xca, 0, 0);
	TEST_ASSERT_EQUAL_HEX(0xca, val);
}

void test_writePin_one() {
	writePin(PinTest1, TRUE);
	assertState(0, 1 << PINTest1, 0);
}

void test_writePin_two() {
	writePin(PinTest1, TRUE);
	writePin(PinTest2, TRUE);
	assertState(0, (1 << PINTest1) | (1 << PINTest2), 0);
}

void test_setPinOne_one() {
	setPinOne(PinTest1);
	assertState(0, 1 << PINTest1, 0);
}

void test_setPinOne_two() {
	setPinOne(PinTest1);
	setPinOne(PinTest2);
	assertState(0, (1 << PINTest1) | (1 << PINTest2), 0);
}

void test_setPinZero_one() {
	port = 0xFF;
	setPinZero(PinTest1);
	assertState(0, ~(1 << PINTest1), 0);
}

void test_setPinZero_two() {
	port = 0xFF;
	setPinZero(PinTest1);
	setPinZero(PinTest2);
	assertState(0, ~((1 << PINTest1) | (1 << PINTest2)), 0);
}

void test_readPin_1() {
	pin = 1 << PINTest1;
	BOOL val = readPin(PinTest1);
	TEST_ASSERT_EQUAL_INT(TRUE, val);
	assertState(1 << PINTest1, 0, 0);
}

void test_readPin_0() {
	pin = ~(1 << PINTest1);
	BOOL val = readPin(PinTest1);
	TEST_ASSERT_EQUAL_INT(FALSE, val);
	assertState(~(1 << PINTest1), 0, 0);
}
