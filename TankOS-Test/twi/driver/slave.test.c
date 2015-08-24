/*
 *  Created on: 12.12.2012
 *      Author: Anton
 */

#include <unity.h>
#include <twi/driver/slave.h>
#include <twi/driver/helper.h>
#include <mocks/port.h>

int masterRequestCalls;
int masterTransmissionStartingCalls;
int masterTransmissionEndedCalls;
int expectedMasterRequestCalls;
int expectedMasterTransmissionStartingCalls;
int expectedMasterTransmissionEndedCalls;

TWIBuffer twi_handleMasterRequest() {
	masterRequestCalls++;
	return sendBuffer;
}

TWIBuffer twi_masterTransmissionStarting() {
	masterTransmissionStartingCalls++;
	return receiveBuffer;
}

void twi_masterTransmissionEnded(TWIBuffer buffer) {
	masterTransmissionEndedCalls++;
	TEST_ASSERT_EQUAL_PTR_MESSAGE(receiveBuffer.data, buffer.data,
	        "Wrong buffer pointer passed to twi_masterTransmissionEnded()");
	receiveBuffer = buffer;
}

void setUp() {
	twi_tests_setUp();
    init_fake_port();
	defaultControlFlags = _BV(TWEN) | _BV(TWINT) | _BV(TWIE) | _BV(TWEA);
	BOOL res = twi_init_slave(testPin1, testPin2);
    TEST_ASSERT_TRUE_MESSAGE(res, "failed to initialize twi slave.");
	twi_init_slave_callbacks(
		twi_handleMasterRequest,
		twi_masterTransmissionStarting,
		twi_masterTransmissionEnded
	);
	masterTransmissionStartingCalls = masterTransmissionEndedCalls = masterRequestCalls = 0;
	expectedMasterRequestCalls = expectedMasterTransmissionStartingCalls =
			expectedMasterTransmissionEndedCalls = 0;
}

void tearDown() {
	TEST_ASSERT_EQUAL_INT_MESSAGE(expectedMasterRequestCalls, masterRequestCalls,
			"Wrong number of master requests!");
	TEST_ASSERT_EQUAL_INT_MESSAGE(expectedMasterTransmissionStartingCalls, masterTransmissionStartingCalls,
			"Wrong number of master transmissions started!");
	TEST_ASSERT_EQUAL_INT_MESSAGE(expectedMasterTransmissionEndedCalls, masterTransmissionEndedCalls,
			"Wrong number of master transmissions ended!");
    destroy_fake_port();
}

TwiHandlerStatus twi_test_handle_interrupt(TwiStatus status) {
	return twi_handle_slave(status);
}

void test_initialization() {
	TEST_ASSERT_EQUAL_HEX(_BV(TWEN) | _BV(TWIE) | _BV(TWEA), TWCR);
	TEST_ASSERT_EQUAL_HEX(0x00, TWDR);
}

void test_slave_twi_init_pins() {
    BOOL res = twi_init_slave(testPin1, testPin2);
    TEST_ASSERT_FALSE_MESSAGE(res, "Second initialization of twi slave should not be possible");
    TEST_ASSERT_EQUAL(PinTwiIO, pinOccupation(testPin1));
    TEST_ASSERT_EQUAL(PinTwiIO, pinOccupation(testPin2));
}

// These tests are implemented in base_tests.c
// The signatures are copied here so that the Unity testrunner generator includes them.
void test_send_successfull_0();
void test_send_successfull_1();
void test_send_successfull_all();
void test_send_arbitrationLost();
void test_send_arbitrationLost_duringSend();
void test_send_arbitrationLost_duringLaterSend();
void test_send_slaNack();
void test_send_dataNack();
void test_send_laterDataNack();
void test_send_NoInfoInterrupt();
void test_send_BusError();
void test_send_IllegalStatus();
void test_receive_successfull_0();
void test_receive_successfull_1();
void test_receive_successfull_many();
void test_receive_arbitrationLost();
void test_receive_arbitrationLost_afterSlaAck();
void test_receive_arbitrationLost_duringLaterReceive();
void test_receive_slaNack();
void test_receive_NoInfoInterrupt();
void test_receive_BusError();
void test_receive_IllegalStatus();
void test_transmitReceive_Success();
void test_transmitReceive_ErrorPhase1();
void test_transmitReceive_ErrorPhase2();
void test_transmitReceive_LostSecondArbitration();

void expectTwiSlaveNoackRead(TwiStatus status, byte data) {
    expectTwiNoackOp(status, 0, data, FALSE);
}

void expectTwiSlaveNoackWrite(TwiStatus status, byte data) {
    expectTwiNoackOp(status, 0, data, TRUE);
}

void expectTwiSlaveWriteOp(TwiStatus status, byte data) {
	expectTwiWriteOp(status, 0, data);
}

void expectTwiSlaveReadOp(TwiStatus status, byte data) {
	expectTwiReadOp(status, 0, data);
}

void expectTwiSlaveControlOp(TwiStatus status) {
	expectTwiControlOp(status, 0);
}

void test_slave_transmit_successfull_1 () {
	expectedMasterRequestCalls = 1;
	sendBuffer.size = 1;
	expectTwiSlaveNoackWrite(TW_ST_SLA_ACK, sendData[0]);
	expectTwiSlaveControlOp(TW_ST_DATA_NACK);
	startTwiSlaveTest();
}

void test_slave_transmit_successfull_n () {
	expectedMasterRequestCalls = 1;
	expectTwiSlaveWriteOp(TW_ST_SLA_ACK, sendData[0]);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, sendData[1]);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, sendData[2]);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, sendData[3]);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, sendData[4]);
	expectTwiSlaveNoackWrite(TW_ST_DATA_ACK, sendData[5]);
	expectTwiSlaveControlOp(TW_ST_DATA_NACK);
	startTwiSlaveTest();
}

void test_slave_transmit_not_enough_0_masterExpects1 () {
	expectedMasterRequestCalls = 1;
	sendBuffer.size = 0;
	expectedError = TWI_Slave_NotEnoughDataTransmitted;
	expectTwiSlaveNoackWrite(TW_ST_SLA_ACK, TwiIllegalByte);
	expectTwiSlaveControlOp(TW_ST_DATA_NACK);
	startTwiSlaveTest();
}

void test_slave_transmit_not_enough_0_masterExpectsMoreThan1 () {
	expectedMasterRequestCalls = 1;
	sendBuffer.size = 0;
	expectedError = TWI_Slave_NotEnoughDataTransmitted;
	expectTwiSlaveNoackWrite(TW_ST_SLA_ACK, TwiIllegalByte);
	expectTwiSlaveNoackWrite(TW_ST_DATA_ACK, TwiIllegalByte);
	expectTwiSlaveNoackWrite(TW_ST_DATA_ACK, TwiIllegalByte);
	expectTwiSlaveControlOp(TW_ST_DATA_NACK);
	startTwiSlaveTest();
}

void test_slave_transmit_not_enough_1 () {
	expectedMasterRequestCalls = 1;
	sendBuffer.size = 1;
	expectedError = TWI_Slave_NotEnoughDataTransmitted;
	expectTwiSlaveNoackWrite(TW_ST_SLA_ACK, sendData[0]);
	expectTwiSlaveNoackWrite(TW_ST_DATA_ACK, TwiIllegalByte);
	expectTwiSlaveNoackWrite(TW_ST_DATA_ACK, TwiIllegalByte);
	expectTwiSlaveControlOp(TW_ST_DATA_NACK);
	startTwiSlaveTest();
}

void test_slave_transmit_not_enough_n () {
	expectedMasterRequestCalls = 1;
	sendBuffer.size = 3;
	expectedError = TWI_Slave_NotEnoughDataTransmitted;
	expectTwiSlaveWriteOp(TW_ST_SLA_ACK,  sendData[0]);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, sendData[1]);
	expectTwiSlaveNoackWrite(TW_ST_DATA_ACK, sendData[2]);
	expectTwiSlaveNoackWrite(TW_ST_DATA_ACK, TwiIllegalByte);
	expectTwiSlaveNoackWrite(TW_ST_DATA_ACK, TwiIllegalByte);
	expectTwiSlaveControlOp(TW_ST_DATA_NACK);
	startTwiSlaveTest();
}

void test_slave_transmit_tooMuchData() {
	expectedMasterRequestCalls = 1;
	expectedError = TWI_Slave_TooMuchDataTransmitted;
	expectTwiSlaveWriteOp(TW_ST_SLA_ACK, sendData[0]);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, sendData[1]);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, sendData[2]);
	expectTwiSlaveControlOp(TW_ST_DATA_NACK);
	startTwiSlaveTest();
}

void test_slave_transmit_afterArbitrationLost () {
	expectedMasterRequestCalls = 1;
	sendBuffer.size = 3;
	expectTwiSlaveWriteOp(TW_ST_ARB_LOST_SLA_ACK, sendData[0]);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, sendData[1]);
	expectTwiSlaveNoackWrite(TW_ST_DATA_ACK, sendData[2]);
	expectTwiSlaveControlOp(TW_ST_DATA_NACK);
	startTwiSlaveTest();
}

void test_slave_receive_successull_1() {
	expectedMasterTransmissionStartingCalls = 1;
	expectedMasterTransmissionEndedCalls = 1;
	receiveBuffer.size = 1;
	expectTwiSlaveControlOp(TW_SR_SLA_ACK);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedByte);
	expectTwiSlaveControlOp(TW_SR_STOP);
	startTwiSlaveTest();
	assertReceivedByte(expectedByte);
}

void test_slave_receive_successull_n() {
	expectedMasterTransmissionStartingCalls = 1;
	expectedMasterTransmissionEndedCalls = 1;
	receiveBuffer.size = 3;
	expectTwiSlaveControlOp(TW_SR_SLA_ACK);
	expectTwiSlaveReadOp(TW_SR_DATA_ACK, expectedReceiveData[0]);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedReceiveData[1]);
	expectTwiSlaveReadOp(TW_SR_DATA_NACK, expectedReceiveData[2]);
	startTwiSlaveTest();
	assertReceivedData(expectedReceiveData, 3);
}

void test_slave_receive_NotEnough_1() {
	expectedMasterTransmissionStartingCalls = 1;
	expectedMasterTransmissionEndedCalls = 1;
	receiveBuffer.size = 4;
	expectedError = TWI_Slave_NotEnoughDataReceived;
	expectTwiSlaveControlOp(TW_SR_SLA_ACK);
	expectTwiSlaveReadOp(TW_SR_DATA_ACK, expectedReceiveData[0]);
	expectTwiSlaveReadOp(TW_SR_DATA_ACK, expectedReceiveData[1]);
	expectTwiSlaveControlOp(TW_SR_STOP);
	startTwiSlaveTest();
	assertReceivedData(expectedReceiveData, 2);
}

void test_slave_receive_NotEnough_2() {
	expectedMasterTransmissionStartingCalls = 1;
	expectedMasterTransmissionEndedCalls = 1;
	receiveBuffer.size = 3;
	expectedError = TWI_Slave_NotEnoughDataReceived;
	expectTwiSlaveControlOp(TW_SR_SLA_ACK);
	expectTwiSlaveReadOp(TW_SR_DATA_ACK, expectedReceiveData[0]);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedReceiveData[1]);
	expectTwiSlaveControlOp(TW_SR_STOP);
	startTwiSlaveTest();
	assertReceivedData(expectedReceiveData, 2);
}

void test_slave_receive_TooMuch_0() {
	expectedMasterTransmissionStartingCalls = 1;
	expectedMasterTransmissionEndedCalls = 1;
	receiveBuffer.size = 0;
	expectedError = TWI_Slave_TooMuchDataReceived;
	expectTwiSlaveControlOp(TW_SR_SLA_ACK);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedReceiveData[0]);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedReceiveData[1]);
	expectTwiSlaveControlOp(TW_SR_STOP);
	startTwiSlaveTest();
	assertReceivedNoData();
}

void test_slave_receive_TooMuch_1() {
	expectedMasterTransmissionStartingCalls = 1;
	expectedMasterTransmissionEndedCalls = 1;
	receiveBuffer.size = 1;
	expectedError = TWI_Slave_TooMuchDataReceived;
	expectTwiSlaveControlOp(TW_SR_SLA_ACK);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedByte);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedReceiveData[0]);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedReceiveData[1]);
	expectTwiSlaveControlOp(TW_SR_STOP);
	startTwiSlaveTest();
	assertReceivedByte(expectedByte);
}

void test_slave_receive_TooMuch_n() {
	expectedMasterTransmissionStartingCalls = 1;
	expectedMasterTransmissionEndedCalls = 1;
	receiveBuffer.size = 3;
	expectedError = TWI_Slave_TooMuchDataReceived;
	expectTwiSlaveControlOp(TW_SR_SLA_ACK);
	expectTwiSlaveReadOp(TW_SR_DATA_ACK, expectedReceiveData[0]);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedReceiveData[1]);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedReceiveData[2]);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedReceiveData[3]);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedReceiveData[4]);
	expectTwiSlaveControlOp(TW_SR_STOP);
	startTwiSlaveTest();
	assertReceivedData(expectedReceiveData, 3);
}

void test_slave_receive_GeneralCall_successfull() {
	expectedMasterTransmissionStartingCalls = 1;
	expectedMasterTransmissionEndedCalls = 1;
	receiveBuffer.size = 3;
	expectTwiSlaveControlOp(TW_SR_GCALL_ACK);
	expectTwiSlaveReadOp(TW_SR_GCALL_DATA_ACK, expectedReceiveData[0]);
	expectTwiSlaveNoackRead(TW_SR_GCALL_DATA_ACK, expectedReceiveData[1]);
	expectTwiSlaveReadOp(TW_SR_GCALL_DATA_NACK, expectedReceiveData[2]);
	startTwiSlaveTest();
	assertReceivedData(expectedReceiveData, 3);
}

void test_slave_receive_GeneralCall_TooMuch() {
	expectedMasterTransmissionStartingCalls = 1;
	expectedMasterTransmissionEndedCalls = 1;
	receiveBuffer.size = 2;
	expectedError = TWI_Slave_TooMuchDataReceived;
	expectTwiSlaveControlOp(TW_SR_GCALL_ACK);
	expectTwiSlaveNoackRead(TW_SR_GCALL_DATA_ACK, expectedReceiveData[0]);
	expectTwiSlaveNoackRead(TW_SR_GCALL_DATA_ACK, expectedReceiveData[1]);
    expectTwiSlaveNoackRead(TW_SR_GCALL_DATA_ACK, expectedReceiveData[1]);
	expectTwiSlaveReadOp(TW_SR_GCALL_DATA_NACK, expectedReceiveData[2]);
	startTwiSlaveTest();
	assertReceivedData(expectedReceiveData, 2);
}

void test_slave_receive_GeneralCall_NotEnough() {
	expectedMasterTransmissionStartingCalls = 1;
	expectedMasterTransmissionEndedCalls = 1;
	receiveBuffer.size = 3;
	expectedError = TWI_Slave_NotEnoughDataReceived;
	expectTwiSlaveControlOp(TW_SR_GCALL_ACK);
	expectTwiSlaveReadOp(TW_SR_GCALL_DATA_ACK, expectedReceiveData[0]);
    expectTwiSlaveControlOp(TW_SR_STOP);
	startTwiSlaveTest();
	assertReceivedData(expectedReceiveData, 1);
}

void test_slave_receive_afterArbitrationLost() {
	expectedMasterTransmissionStartingCalls = 1;
	expectedMasterTransmissionEndedCalls = 1;
	receiveBuffer.size = 2;
	expectTwiSlaveControlOp(TW_SR_ARB_LOST_SLA_ACK);
	expectTwiSlaveNoackRead(TW_SR_DATA_ACK, expectedReceiveData[0]);
	expectTwiSlaveReadOp(TW_SR_DATA_NACK, expectedReceiveData[1]);
	startTwiSlaveTest();
	assertReceivedData(expectedReceiveData, 2);
}

void test_slave_receive_afterArbitrationLost_GeneralCall() {
	expectedMasterTransmissionStartingCalls = 1;
	expectedMasterTransmissionEndedCalls = 1;
	receiveBuffer.size = 2;
	expectTwiSlaveControlOp(TW_SR_ARB_LOST_GCALL_ACK);
	expectTwiSlaveNoackRead(TW_SR_GCALL_DATA_ACK, expectedReceiveData[0]);
	expectTwiSlaveReadOp(TW_SR_GCALL_DATA_NACK, expectedReceiveData[1]);
	startTwiSlaveTest();
	assertReceivedData(expectedReceiveData, 2);
}

// TODO - NACK states
