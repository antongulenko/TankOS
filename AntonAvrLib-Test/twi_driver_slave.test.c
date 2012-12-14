/*
 * twi_driver_master.test.c
 *
 *  Created on: 12.12.2012
 *      Author: Anton
 */

#include <unity.h>
#include "twi_driver_helper.h"

int masterRequestCalls;
int masterTransmissionCalls;
int expectedMasterRequestCalls;
int expectedMasterTransmissionCalls;

void setUp() {
	twi_tests_setUp();
	defaultControlFlags = _BV(TWEN) | _BV(TWINT) | _BV(TWIE) | _BV(TWEA);
	twi_init_slave();
	masterTransmissionCalls = masterRequestCalls = 0;
	expectedMasterRequestCalls = expectedMasterTransmissionCalls = 0;
}

void tearDown() {
	TEST_ASSERT_EQUAL_INT_MESSAGE(expectedMasterRequestCalls, masterRequestCalls,
			"Wrong number of master requests!");
	TEST_ASSERT_EQUAL_INT_MESSAGE(expectedMasterTransmissionCalls, masterTransmissionCalls,
				"Wrong number of master transmissions!");
}

TwiHandlerStatus twi_test_handle_interrupt(TwiStatus status) {
	return twi_handle_slave(status);
}

void test_initialization() {
	TEST_ASSERT_EQUAL_HEX(TwiSlaveAddress, TWAR);
	TEST_ASSERT_EQUAL_HEX(TwiBitRateValue, TWBR);
	TEST_ASSERT_EQUAL_HEX(TwiPrescalerMask, TWSR);
	TEST_ASSERT_EQUAL_HEX(_BV(TWEN) | _BV(TWIE) | _BV(TWEA), TWCR);
	TEST_ASSERT_EQUAL_HEX(0xFF, TWDR);
}

TWIBuffer twi_handleMasterRequest() {
	masterRequestCalls++;
	return sendBuffer;
}

void twi_handleMasterTransmission(TWIBuffer twi_buffer) {
	masterTransmissionCalls++;
}

// These tests are implemented in twi_driver_baseTests.c
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

void expectTwiSlaveWriteOp(TwiStatus status, byte data) {
	// The control register is expected to always be the same.
	expectTwiWriteOp(status, 0, data);
}

void expectTwiSlaveControlOp(TwiStatus status) {
	// The control register is expected to always be the same.
	expectTwiControlOp(status, 0);
}

void test_slave_transmit_successfull_1 () {
	expectedMasterRequestCalls = 1;
	sendBuffer.size = 1;
	expectTwiSlaveWriteOp(TW_ST_SLA_ACK, sendData[0]);
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
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, sendData[5]);
	expectTwiSlaveControlOp(TW_ST_DATA_NACK);
	startTwiSlaveTest();
}

void test_slave_transmit_not_enough_0_masterExpects1 () {
	expectedMasterRequestCalls = 1;
	sendBuffer.size = 0;
	expectedError = TWI_Slave_NotEnoughDataTransmitted;
	expectTwiSlaveWriteOp(TW_ST_SLA_ACK, TwiIllegalByte);
	expectTwiSlaveControlOp(TW_ST_DATA_NACK);
	startTwiSlaveTest();
}

void test_slave_transmit_not_enough_0_masterExpectsMoreThan1 () {
	expectedMasterRequestCalls = 1;
	sendBuffer.size = 0;
	expectedError = TWI_Slave_NotEnoughDataTransmitted;
	expectTwiSlaveWriteOp(TW_ST_SLA_ACK, TwiIllegalByte);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, TwiIllegalByte);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, TwiIllegalByte);
	expectTwiSlaveControlOp(TW_ST_DATA_NACK);
	startTwiSlaveTest();
}

void test_slave_transmit_not_enough_1 () {
	expectedMasterRequestCalls = 1;
	sendBuffer.size = 1;
	expectedError = TWI_Slave_NotEnoughDataTransmitted;
	expectTwiSlaveWriteOp(TW_ST_SLA_ACK, sendData[0]);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, TwiIllegalByte);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, TwiIllegalByte);
	expectTwiSlaveControlOp(TW_ST_DATA_NACK);
	startTwiSlaveTest();
}

void test_slave_transmit_not_enough_n () {
	expectedMasterRequestCalls = 1;
	sendBuffer.size = 3;
	expectedError = TWI_Slave_NotEnoughDataTransmitted;
	expectTwiSlaveWriteOp(TW_ST_SLA_ACK,  sendData[0]);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, sendData[1]);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, sendData[2]);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, TwiIllegalByte);
	expectTwiSlaveWriteOp(TW_ST_DATA_ACK, TwiIllegalByte);
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



// == Slave tests
// = Slave Receiver
//   - Receive 0, 1, n byte
//   - TWI_Slave_NotEnoughDataReceived
//   - Duplicate receive tests for GCALL
// = Both: being addressed after arbitration lost
