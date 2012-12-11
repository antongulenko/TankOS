
#include <unity.h>
#include <string.h>
#include <anton_std.h>
#include <kernel/TWI/twi_raw.h>
#include <kernel/TWI/twi_raw_handler.h>

const byte TwiSlaveAddress = 0xa9;
const byte TwiBitRateValue = 0xdd;
const byte TwiPrescalerMask = 0xcc;

TWIDevice testDevice = { 0xaa };
byte testData[] = { 5, 6, 7, 0xaa, 0xdd, 0xcc };
TWIBuffer testBuffer = { testData, sizeof(testData) };

typedef struct ExpectedTwiOp {
	byte status; // Input for twi_handle()
	byte controlRegister; // Expected result of twi_handle()
	byte dataRegister;
} ExpectedTwiOp;

ExpectedTwiOp expectedOps[20];
int numExpectedOps;
int handledExpectedOps;
TwiError expectedError;
BOOL twiHasTerminated;

void setUp() {
	// Reset all TWI registers
	TWCR = TWDR = TWBR = TWSR = TWAR = TWAMR = 0;
	twi_init();
	numExpectedOps = handledExpectedOps = 0;
	expectedError = TWI_No_Error;
	twiHasTerminated = FALSE;
	testBuffer.size = sizeof(testData);
	// The twi_running flag is not cleared by the twi_raw module itself!
	twi_running = FALSE;
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

static byte fullControlRegister(byte reg) {
	// These bite are always required
	return reg | _BV(TWEN) | _BV(TWINT) | _BV(TWIE);
}

void expectTwiOp(TwiStatus status, byte controlRegister, byte dataRegister) {
	expectedOps[numExpectedOps].status = status;
	expectedOps[numExpectedOps].controlRegister = fullControlRegister(controlRegister);
	expectedOps[numExpectedOps].dataRegister = dataRegister;
	numExpectedOps++;
}

void startTwiTest(byte initalControlRegister) {
	initalControlRegister = fullControlRegister(initalControlRegister);
	TEST_ASSERT_EQUAL_HEX_MESSAGE(initalControlRegister, TWCR, "Wrong initial control register");
	TEST_ASSERT_EQUAL_HEX_MESSAGE(0xFF, TWDR, "Data register changed too early");

	while (handledExpectedOps < numExpectedOps) {
		ExpectedTwiOp operation = expectedOps[handledExpectedOps++];
		TwiHandlerStatus result = twi_handle(operation.status);
		TEST_ASSERT_EQUAL_HEX_MESSAGE(operation.controlRegister,
					result.controlRegister, "Unexpected Control Register");
		TEST_ASSERT_EQUAL_HEX_MESSAGE(operation.dataRegister,
					TWDR, "Unexpected Data Register");

		if (result.handlerFinished) {
			TEST_ASSERT_EQUAL_HEX_MESSAGE(expectedError, twi_error, "Unexpected error-state");
			TEST_ASSERT_EQUAL_MESSAGE(numExpectedOps, handledExpectedOps, "TWI terminated too early!");
			twiHasTerminated = TRUE;
		} else {
			TEST_ASSERT_EQUAL_HEX_MESSAGE(TWI_No_Error, twi_error, "twi_error set too early!");
			TEST_ASSERT_MESSAGE(twi_running, "twi_running flag was reset!");
			// More to tests here?
		}
	}
	TEST_ASSERT_MESSAGE(twiHasTerminated, "TWI has not terminated in time!");
}

void test_send_successfull_0() {
	testBuffer.size = 0;
	expectTwiOp(TW_START, 0, testDevice.address);
	expectTwiOp(TW_MT_SLA_ACK, _BV(TWSTO), testDevice.address);
	twiSend(testDevice, testBuffer);
	startTwiTest(_BV(TWSTA));
}

void test_send_successfull_1() {
	testBuffer.size = 1;
	expectTwiOp(TW_START, 0, testDevice.address);
	expectTwiOp(TW_MT_SLA_ACK, 0, testData[0]);
	expectTwiOp(TW_MT_DATA_ACK, _BV(TWSTO), testData[0]);
	twiSend(testDevice, testBuffer);
	startTwiTest(_BV(TWSTA));
}

void test_send_successfull_all() {
	expectTwiOp(TW_START, 0, testDevice.address);
	expectTwiOp(TW_MT_SLA_ACK, 0, testData[0]);
	expectTwiOp(TW_MT_DATA_ACK, 0, testData[1]);
	expectTwiOp(TW_MT_DATA_ACK, 0, testData[2]);
	expectTwiOp(TW_MT_DATA_ACK, 0, testData[3]);
	expectTwiOp(TW_MT_DATA_ACK, 0, testData[4]);
	expectTwiOp(TW_MT_DATA_ACK, 0, testData[5]);
	expectTwiOp(TW_MT_DATA_ACK, _BV(TWSTO), testData[5]);
	twiSend(testDevice, testBuffer);
	startTwiTest(_BV(TWSTA));
}

void test_send_arbitrationLost() {
	expectedError = TWI_Arbitration_Lost;
	expectTwiOp(TW_START, 0, testDevice.address);
	expectTwiOp(TW_MR_ARB_LOST, 0, testDevice.address);
	twiSend(testDevice, testBuffer);
	startTwiTest(_BV(TWSTA));
}

void test_send_arbitrationLost_duringSend() {
	expectedError = TWI_Arbitration_Lost;
	expectTwiOp(TW_START, 0, testDevice.address);
	expectTwiOp(TW_MT_SLA_ACK, 0, testData[0]);
	expectTwiOp(TW_MR_ARB_LOST, 0, testData[0]);
	twiSend(testDevice, testBuffer);
	startTwiTest(_BV(TWSTA));
}

void test_send_arbitrationLost_duringLaterSend() {
	// Can this actually happen on the device??
	expectedError = TWI_Arbitration_Lost;
	expectTwiOp(TW_START, 0, testDevice.address);
	expectTwiOp(TW_MT_SLA_ACK, 0, testData[0]);
	expectTwiOp(TW_MT_DATA_ACK, 0, testData[1]);
	expectTwiOp(TW_MT_DATA_ACK, 0, testData[2]);
	expectTwiOp(TW_MR_ARB_LOST, 0, testData[2]);
	twiSend(testDevice, testBuffer);
	startTwiTest(_BV(TWSTA));
}

void test_send_slaNack() {
	expectedError = TWI_SlaveAddress_NoAck;
	expectTwiOp(TW_START, 0, testDevice.address);
	expectTwiOp(TW_MT_SLA_NACK, _BV(TWSTO), testDevice.address);
	twiSend(testDevice, testBuffer);
	startTwiTest(_BV(TWSTA));
}

void test_send_dataNack() {
	expectedError = TWI_Master_TooMuchDataTransmitted;
	expectTwiOp(TW_START, 0, testDevice.address);
	expectTwiOp(TW_MT_SLA_ACK, 0, testData[0]);
	expectTwiOp(TW_MT_DATA_NACK, _BV(TWSTO), testData[0]);
	twiSend(testDevice, testBuffer);
	startTwiTest(_BV(TWSTA));
}

void test_send_laterDataNack() {
	expectedError = TWI_Master_TooMuchDataTransmitted;
	expectTwiOp(TW_START, 0, testDevice.address);
	expectTwiOp(TW_MT_SLA_ACK, 0, testData[0]);
	expectTwiOp(TW_MT_DATA_ACK, 0, testData[1]);
	expectTwiOp(TW_MT_DATA_ACK, 0, testData[2]);
	expectTwiOp(TW_MT_DATA_NACK, _BV(TWSTO), testData[2]);
	twiSend(testDevice, testBuffer);
	startTwiTest(_BV(TWSTA));
}

void test_send_NoInfoInterrupt() {
	expectedError = TWI_No_Info_Interrupt;
	expectTwiOp(TW_START, 0, testDevice.address);
	expectTwiOp(TW_MT_SLA_ACK, 0, testData[0]);
	expectTwiOp(TW_NO_INFO, 0, testData[0]);
	twiSend(testDevice, testBuffer);
	startTwiTest(_BV(TWSTA));
}

void test_send_BusError() {
	expectedError = TWI_Bus_Error;
	expectTwiOp(TW_START, 0, testDevice.address);
	expectTwiOp(TW_MT_SLA_ACK, 0, testData[0]);
	expectTwiOp(TW_BUS_ERROR, _BV(TWSTO), testData[0]);
	twiSend(testDevice, testBuffer);
	startTwiTest(_BV(TWSTA));
}

void test_send_IllegalStatus() {
	// This should never happen in hardware.
	expectedError = TWI_Illegal_Status;
	expectTwiOp(TW_START, 0, testDevice.address);
	expectTwiOp(TW_MT_SLA_ACK, 0, testData[0]);
	expectTwiOp(0xcc, 0, testData[0]);
	twiSend(testDevice, testBuffer);
	startTwiTest(_BV(TWSTA));
}

// Test scenarios
// master receive mode
// send + receive
