
#include <unity.h>
#include <string.h>
#include <anton_std.h>
#include <kernel/TWI/twi_raw.h>
#include <kernel/TWI/twi_raw_handler.h>

const byte TwiSlaveAddress = 0xa9;
const byte TwiBitRateValue = 0xdd;
const byte TwiPrescalerMask = 0xcc;

#define TEST_ADDRESS 0xaa
TWIDevice testDevice = { TEST_ADDRESS & ~1 };
const byte receiveAddress = TEST_ADDRESS | 1;
byte sendData[] = { 5, 6, 7, 0xaa, 0xdd, 0xcc };
TWIBuffer sendBuffer = { sendData, sizeof(sendData) };

byte receiveData[10];
TWIBuffer receiveBuffer = { receiveData, sizeof(receiveData) };

byte expectedReceiveData[] = { 0xdd, 0xaa, 0xca, 4, 9, 1 };
byte expectedByte = 0xaa;

#define ILLEGAL_STATUS 0xcc

typedef struct ExpectedTwiOp {
	byte status; // Input for twi_handle()
	byte controlRegister; // Expected result of twi_handle()
	byte dataRegister;
	BOOL isWrite; // If FALSE: read operation
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
	sendBuffer.size = sizeof(sendData);
	// The twi_running flag is not cleared by the twi_raw module itself!
	twi_running = FALSE;
	memset(receiveData, 0, sizeof(receiveData));
	receiveBuffer.size = sizeof(expectedReceiveData);
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

void expectTwiOp(TwiStatus status, byte controlRegister, byte dataRegister, BOOL isWrite) {
	expectedOps[numExpectedOps].status = status;
	expectedOps[numExpectedOps].controlRegister = fullControlRegister(controlRegister);
	expectedOps[numExpectedOps].dataRegister = dataRegister;
	expectedOps[numExpectedOps].isWrite = isWrite;
	numExpectedOps++;
}

void expectTwiWriteOp(TwiStatus status, byte controlRegister, byte dataRegister) {
	expectTwiOp(status, controlRegister, dataRegister, TRUE);
}

void expectTwiReadOp(TwiStatus status, byte controlRegister, byte dataRegister) {
	expectTwiOp(status, controlRegister, dataRegister, FALSE);
}

void expectTwiControlOp(TwiStatus status, byte controlRegister) {
	// This means that no operation on the data register is expected
	// Map this to read-operation, since it checks that the data register is not altered.
	expectTwiReadOp(status, controlRegister, 0xff);
}

void assertReceivedData(byte *data, int size) {
	if (size > 0)
		TEST_ASSERT_EQUAL_UINT8_ARRAY_MESSAGE(data, receiveData,
			size, "Received wrong or not enought data!");
	if (size < sizeof(receiveData))
		TEST_ASSERT_EQUAL_HEX_MESSAGE(0, receiveData[size],
				"Too much data received!");
}

void assertReceivedNoData() {
	assertReceivedData(0, 0);
}

void assertReceivedByte(byte expectedByte) {
	assertReceivedData(&expectedByte, 1);
}

void startTwiTest() {
	byte initalControlRegister = fullControlRegister(_BV(TWSTA));
	TEST_ASSERT_EQUAL_HEX_MESSAGE(initalControlRegister, TWCR, "Wrong initial control register");
	TEST_ASSERT_EQUAL_HEX_MESSAGE(0xFF, TWDR, "Data register changed too early");

	while (handledExpectedOps < numExpectedOps) {
		ExpectedTwiOp operation = expectedOps[handledExpectedOps++];
		if (!operation.isWrite) {
			TWDR = operation.dataRegister;
		}
		TwiHandlerStatus result = twi_handle(operation.status);
		TEST_ASSERT_EQUAL_HEX_MESSAGE(operation.controlRegister,
					result.controlRegister, "Unexpected Control Register");
		TEST_ASSERT_EQUAL_HEX_MESSAGE(operation.dataRegister, TWDR,
			operation.isWrite
				? "Unexpected Data Register written"
				: "Data Register written during Receive operation");

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

// ===========
// === Master Transmit Mode
// ===========

void test_send_successfull_0() {
	sendBuffer.size = 0;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiControlOp(TW_MT_SLA_ACK, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiTest();
}

void test_send_successfull_1() {
	sendBuffer.size = 1;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(TW_MT_DATA_ACK, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiTest();
}

void test_send_successfull_all() {
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[1]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[2]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[3]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[4]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[5]);
	expectTwiControlOp(TW_MT_DATA_ACK, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiTest();
}

void test_send_arbitrationLost() {
	expectedError = TWI_Arbitration_Lost;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiControlOp(TW_MT_ARB_LOST, 0);
	twiSend(testDevice, sendBuffer);
	startTwiTest();
}

void test_send_arbitrationLost_duringSend() {
	expectedError = TWI_Arbitration_Lost;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(TW_MT_ARB_LOST, 0);
	twiSend(testDevice, sendBuffer);
	startTwiTest();
}

void test_send_arbitrationLost_duringLaterSend() {
	// Can this actually happen on the device??
	expectedError = TWI_Arbitration_Lost;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[1]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[2]);
	expectTwiControlOp(TW_MT_ARB_LOST, 0);
	twiSend(testDevice, sendBuffer);
	startTwiTest();
}

void test_send_slaNack() {
	expectedError = TWI_SlaveAddress_NoAck;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiControlOp(TW_MT_SLA_NACK, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiTest();
}

void test_send_dataNack() {
	expectedError = TWI_Master_TooMuchDataTransmitted;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(TW_MT_DATA_NACK, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiTest();
}

void test_send_laterDataNack() {
	expectedError = TWI_Master_TooMuchDataTransmitted;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[1]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[2]);
	expectTwiControlOp(TW_MT_DATA_NACK, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiTest();
}

void test_send_NoInfoInterrupt() {
	expectedError = TWI_No_Info_Interrupt;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(TW_NO_INFO, 0);
	twiSend(testDevice, sendBuffer);
	startTwiTest();
}

void test_send_BusError() {
	expectedError = TWI_Bus_Error;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(TW_BUS_ERROR, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiTest();
}

void test_send_IllegalStatus() {
	// This should never happen in hardware.
	expectedError = TWI_Illegal_Status;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(ILLEGAL_STATUS, 0);
	twiSend(testDevice, sendBuffer);
	startTwiTest();
}

// ===========
// === Master Receive Mode
// ===========

void test_receive_successfull_0() {
	receiveBuffer.size = 0;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, 0);
	expectTwiControlOp(TW_MR_DATA_NACK, _BV(TWSTO));
	// In Master Receive mode, at least one byte must be received from the slave.
	// This byte should be ignored though, because the receive buffer has size 0.
	twiReceive(testDevice, receiveBuffer);
	startTwiTest();
	assertReceivedNoData();
}

void test_receive_successfull_1() {
	receiveBuffer.size = 1;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, 0);
	expectTwiReadOp(TW_MR_DATA_NACK, _BV(TWSTO), expectedByte);
	twiReceive(testDevice, receiveBuffer);
	startTwiTest();
	assertReceivedByte(expectedByte);
}

void test_receive_successfull_many() {
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, _BV(TWEA));
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedReceiveData[0]);
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedReceiveData[1]);
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedReceiveData[2]);
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedReceiveData[3]);
	expectTwiReadOp(TW_MR_DATA_ACK, 0, expectedReceiveData[4]);
	expectTwiReadOp(TW_MR_DATA_NACK, _BV(TWSTO), expectedReceiveData[5]);
	twiReceive(testDevice, receiveBuffer);
	startTwiTest();
	assertReceivedData(expectedReceiveData, sizeof(expectedReceiveData));
}

void test_receive_arbitrationLost() {
	expectedError = TWI_Arbitration_Lost;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_ARB_LOST, 0);
	twiReceive(testDevice, receiveBuffer);
	startTwiTest();
	assertReceivedNoData();
}

void test_receive_arbitrationLost_afterSlaAck() {
	expectedError = TWI_Arbitration_Lost;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, _BV(TWEA));
	expectTwiControlOp(TW_MR_ARB_LOST, 0);
	twiReceive(testDevice, receiveBuffer);
	startTwiTest();
	assertReceivedNoData();
}

void test_receive_arbitrationLost_duringLaterReceive() {
	// Can this actually happen on the device??
	expectedError = TWI_Arbitration_Lost;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, _BV(TWEA));
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedReceiveData[0]);
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedReceiveData[1]);
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedReceiveData[2]);
	expectTwiControlOp(TW_MR_ARB_LOST, 0);
	twiReceive(testDevice, receiveBuffer);
	startTwiTest();
	assertReceivedData(expectedReceiveData, 3); // Only 3 bytes received
}

void test_receive_slaNack() {
	expectedError = TWI_SlaveAddress_NoAck;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_NACK, _BV(TWSTO));
	twiReceive(testDevice, receiveBuffer);
	startTwiTest();
	assertReceivedNoData();
}

void test_receive_NoInfoInterrupt() {
	expectedError = TWI_No_Info_Interrupt;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, _BV(TWEA));
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedByte);
	expectTwiControlOp(TW_NO_INFO, 0);
	twiReceive(testDevice, receiveBuffer);
	startTwiTest();
	assertReceivedByte(expectedByte);
}

void test_receive_BusError() {
	expectedError = TWI_Bus_Error;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, _BV(TWEA));
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedByte);
	expectTwiControlOp(TW_BUS_ERROR, _BV(TWSTO));
	twiReceive(testDevice, receiveBuffer);
	startTwiTest();
	assertReceivedByte(expectedByte);
}

void test_receive_IllegalStatus() {
	// This should never happen in hardware.
	expectedError = TWI_Illegal_Status;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, _BV(TWEA));
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedByte);
	expectTwiControlOp(ILLEGAL_STATUS, 0);
	twiReceive(testDevice, receiveBuffer);
	startTwiTest();
	assertReceivedByte(expectedByte);
}


// ===========
// === Master Transmit + Immediate Receive Mode
// ===========
// Not all cases are tested for this mode-combination, since both
// modes are tested separately. Should be enough to test the transition from
// master-transmitter to master-receiver mode.

void test_transmitReceive_Success() {
	sendBuffer.size = 3;
	receiveBuffer.size = 3;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[1]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[2]);
	expectTwiControlOp(TW_MT_DATA_ACK, _BV(TWSTA));
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, _BV(TWEA));
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedReceiveData[0]);
	expectTwiReadOp(TW_MR_DATA_ACK, 0, expectedReceiveData[1]);
	expectTwiReadOp(TW_MR_DATA_NACK, _BV(TWSTO), expectedReceiveData[2]);
	twiSendReceive(testDevice, sendBuffer, receiveBuffer);
	startTwiTest();
	assertReceivedData(expectedReceiveData, 3);
}

void test_transmitReceive_ErrorPhase1() {
	expectedError = TWI_Bus_Error;
	sendBuffer.size = 3;
	receiveBuffer.size = 3;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(TW_BUS_ERROR, _BV(TWSTO));
	twiSendReceive(testDevice, sendBuffer, receiveBuffer);
	startTwiTest();
	assertReceivedNoData();
}

void test_transmitReceive_ErrorPhase2() {
	expectedError = TWI_Bus_Error;
	sendBuffer.size = 3;
	receiveBuffer.size = 3;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[1]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[2]);
	expectTwiControlOp(TW_MT_DATA_ACK, _BV(TWSTA));
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, _BV(TWEA));
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedByte);
	expectTwiControlOp(TW_BUS_ERROR, _BV(TWSTO));
	twiSendReceive(testDevice, sendBuffer, receiveBuffer);
	startTwiTest();
	assertReceivedByte(expectedByte);
}

void test_transmitReceive_LostSecondArbitration() {
	expectedError = TWI_Arbitration_Lost;
	sendBuffer.size = 3;
	receiveBuffer.size = 3;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[1]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[2]);
	expectTwiControlOp(TW_MT_DATA_ACK, _BV(TWSTA));
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_ARB_LOST, 0);
	twiSendReceive(testDevice, sendBuffer, receiveBuffer);
	startTwiTest();
	assertReceivedNoData();
}
