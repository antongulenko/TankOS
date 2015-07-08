 
#include <unity.h>
#include <kernel/devices/external_interrupts.h>
#include <tank_os_common.h>

#define PinChangeMasks ((uint32_t) (PCMSK0 << 24 | PCMSK1 << 16 | PCMSK2 << 8 | PCMSK3))

void setUp() {
	clear_interrupt_registers();
}

void tearDown() {
}

void performTest(uint8_t controlRegister, int *pinChangeNumbers, int count) {
	// This is not a good test, since most of the logic of the actual
	// module is repeated here...
	uint32_t expectedRegisterData = 0;
	for (int i = 0; i < count; i++) {
		int num = pinChangeNumbers[i];
		int absNum = abs(num);
		if (num < 0) {
			disblePinChangeInterrupt((uint8_t) absNum);
			if (absNum < 31)
				expectedRegisterData &= ~(1 << (30 - absNum));
		} else {
			enablePinChangeInterrupt((uint8_t) absNum);
			if (absNum < 31)
				expectedRegisterData |= 1 << (30 - absNum);
		}
	}
	TEST_ASSERT_EQUAL_HEX(expectedRegisterData, PinChangeMasks);
	TEST_ASSERT_EQUAL_HEX(controlRegister, PCICR);
}

void test_allZeroAfterInit() {
	performTest(0, 0, 0);
}

void test_enableOne_1() {
	int testPins[] = { 3 };
	performTest(_BV(0), testPins, 1);
}

void test_enableOne_2() {
	int testPins[] = { 11 };
	performTest(_BV(1), testPins, 1);
}

void test_enableOne_3() {
	int testPins[] = { 19 };
	performTest(_BV(2), testPins, 1);
}

void test_enableOne_4() {
	int testPins[] = { 27 };
	performTest(_BV(3), testPins, 1);
}

void test_enableTwo_1() {
	int testPins[] = { 3, 11 };
	performTest(_BV(0) | _BV(1), testPins, 2);
}

void test_enableTwo_2() {
	int testPins[] = { 11, 27 };
	performTest(_BV(1) | _BV(3), testPins, 2);
}

void test_disableOne_1() {
	int testPins[] = { -3 };
	performTest(0, testPins, 1);
}

void test_disableOne_2() {
	int testPins[] = { -11 };
	performTest(0, testPins, 1);
}

void test_disableTwo_1() {
	int testPins[] = { -3, -11 };
	performTest(0, testPins, 2);
}

void test_disableTwo_2() {
	int testPins[] = { -11, -27 };
	performTest(0, testPins, 2);
}

void test_redisableOne_1() {
	int testPins[] = { 3, -3 };
	performTest(0, testPins, 2);
}

void test_redisableOne_2() {
	int testPins[] = { 11, -11 };
	performTest(0, testPins, 2);
}

void test_redisableTwo_1() {
	int testPins[] = { 3, 11, -3, -11 };
	performTest(0, testPins, 4);
}

void test_redisableTwo_2() {
	int testPins[] = { 27, 3, -3, -27 };
	performTest(0, testPins, 4);
}

void test_keepEnabled() {
	int testPins[] = { 27, 3, -27 };
	performTest(_BV(0), testPins, 3);
}

void test_enableIgnoresWrongNumber() {
	int testPins[] = { 50 };
	performTest(0, testPins, 1);
}

void test_disableIgnoresWrongNumber() {
	int testPins[] = { -50 };
	performTest(0, testPins, 1);
}

void test_isEnabled_true() {
	enablePinChangeInterrupt(20);
	TEST_ASSERT_EQUAL_INT(TRUE, isPinChangeInterruptEnabled(20));
}

void test_isEnabled_false() {
	PCMSK0 = PCMSK1 = PCMSK2 = PCMSK3 = 0xFF;
	disblePinChangeInterrupt(20);
	TEST_ASSERT_EQUAL_INT(FALSE, isPinChangeInterruptEnabled(20));
}
