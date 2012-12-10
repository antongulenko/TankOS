
#include <unity.h>
#include <string.h>
#include <anton_std.h>
#include <kernel/TWI/twi_raw.h>
#include <kernel/TWI/twi_raw_handler.h>

const byte TwiSlaveAddress = 0xa9;
const byte TwiBitRateValue = 0xdd;
const byte TwiPrescalerMask = 0xcc;

typedef struct ExpectedTwiOp {
	byte status; // Input for twi_handle()
	byte controlRegister; // Expected result of twi_handle()
} ExpectedTwiOp;

ExpectedTwiOp expectedOps[20];
int numExpectedOps;
int handledExpectedOps;
TwiError expectedError;
BOOL expectedHandlerError;
BOOL twiHasTerminated;

void setUp() {
	// Reset all TWI registers
	TWCR = TWDR = TWBR = TWSR = TWAR = TWAMR = 0;
	twi_init();
	numExpectedOps = handledExpectedOps = 0;
	expectedError = TWI_No_Error;
	expectedHandlerError = FALSE;
	twiHasTerminated = FALSE;
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

void expectTwiOp(TwiStatus status, byte controlRegister) {
	expectedOps[numExpectedOps].status = status;
	expectedOps[numExpectedOps].controlRegister = controlRegister;
	numExpectedOps++;
}

void startTwiTest() {
	while (handledExpectedOps < numExpectedOps) {
		ExpectedTwiOp operation = expectedOps[handledExpectedOps++];
		TwiHandlerStatus result = twi_handle(operation.status);
		TEST_ASSERT_EQUAL_HEX_MESSAGE(operation.controlRegister,
					result.controlRegister, "Unexpected Control Register");

		BOOL errorStatus = result.status == TWI_HANDLER_ERROR;
		switch (result.status) {
			case TWI_HANDLER_FINISHED:
			case TWI_HANDLER_ERROR:
				TEST_ASSERT_EQUAL_HEX_MESSAGE(expectedError, twi_error, "Unexpected error-state");
				TEST_ASSERT_EQUAL_MESSAGE(expectedHandlerError, errorStatus, "Error was expected!");
				TEST_ASSERT_EQUAL_MESSAGE(numExpectedOps, handledExpectedOps, "TWI terminated too early!");
				twiHasTerminated = TRUE;
				break;
			case TWI_HANDLER_OK:
				TEST_ASSERT_EQUAL_HEX_MESSAGE(TWI_No_Error, twi_error, "twi_error set too early!");
				// More to test here?
				break;
			default:
				TEST_FAIL_MESSAGE("Unexpected TwiHandler result status");
				break;
		}
	}
	TEST_ASSERT_MESSAGE(twiHasTerminated, "TWI has not terminated as expected!");
}

void test_send() {
	expectTwiOp(TW_START, _BV(TWINT));
	startTwiTest();
}
