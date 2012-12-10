
#include <unity.h>
#include <string.h>
#include <anton_std.h>
#include <kernel/TWI/twi_raw.h>
#include <kernel/TWI/twi_raw_handler.h>

const byte TwiSlaveAddress = 0xa9;
const byte TwiBitRateValue = 0xdd;
const byte TwiPrescalerMask = 0xcc;

void setUp() {
	// Reset all TWI registers
	TWCR = TWDR = TWBR = TWSR = TWAR = TWAMR = 0;
	twi_init();
}

void tearDown() {
}

void test_initialization() {
	TEST_ASSERT_EQUAL_HEX(0, TWAR);
	TEST_ASSERT_EQUAL_HEX(TwiBitRateValue, TWBR);
	TEST_ASSERT_EQUAL_HEX(TwiPrescalerMask, TWSR);
	TEST_ASSERT_EQUAL_HEX(_BV(TWEN) | _BV(TWIE), TWCR);
	TEST_ASSERT_EQUAL_HEX(0xFF, TWDR);
}


