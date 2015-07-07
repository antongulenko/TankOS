/*
 * test_raw_baseTests.c
 *
 *  Created on: 12.12.2012
 *      Author: Anton
 */

#include <unity.h>
#include <anton_std.h>
#include "twi_driver_helper.h"
#include <kernel/TWI/twi_driver_master.h>

// These signatures were copied from a generated testrunner.
// They are here because the tests from this file are used by other .test.c files,
// which need to contain the complete signatures (including a header does not work).
extern void test_send_successfull_0();
extern void test_send_successfull_1();
extern void test_send_successfull_all();
extern void test_send_arbitrationLost();
extern void test_send_arbitrationLost_duringSend();
extern void test_send_arbitrationLost_duringLaterSend();
extern void test_send_slaNack();
extern void test_send_dataNack();
extern void test_send_laterDataNack();
extern void test_send_NoInfoInterrupt();
extern void test_send_BusError();
extern void test_send_IllegalStatus();
extern void test_receive_successfull_0();
extern void test_receive_successfull_1();
extern void test_receive_successfull_many();
extern void test_receive_arbitrationLost();
extern void test_receive_arbitrationLost_afterSlaAck();
extern void test_receive_arbitrationLost_duringLaterReceive();
extern void test_receive_slaNack();
extern void test_receive_NoInfoInterrupt();
extern void test_receive_BusError();
extern void test_receive_IllegalStatus();
extern void test_transmitReceive_Success();
extern void test_transmitReceive_ErrorPhase1();
extern void test_transmitReceive_ErrorPhase2();
extern void test_transmitReceive_LostSecondArbitration();

// TODO -- test twiWaitForCompletion() !!!

// ===========
// === Master Transmit Mode
// ===========

void test_send_successfull_0() {
	sendBuffer.size = 0;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiControlOp(TW_MT_SLA_ACK, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiMasterTest();
}

void test_send_successfull_1() {
	sendBuffer.size = 1;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(TW_MT_DATA_ACK, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiMasterTest();
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
	startTwiMasterTest();
}

void test_send_arbitrationLost() {
	expectedError = TWI_Arbitration_Lost;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiControlOp(TW_MT_ARB_LOST, 0);
	twiSend(testDevice, sendBuffer);
	startTwiMasterTest();
}

void test_send_arbitrationLost_duringSend() {
	expectedError = TWI_Arbitration_Lost;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(TW_MT_ARB_LOST, 0);
	twiSend(testDevice, sendBuffer);
	startTwiMasterTest();
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
	startTwiMasterTest();
}

void test_send_slaNack() {
	expectedError = TWI_SlaveAddress_NoAck;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiControlOp(TW_MT_SLA_NACK, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiMasterTest();
}

void test_send_dataNack() {
	expectedError = TWI_Master_TooMuchDataTransmitted;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(TW_MT_DATA_NACK, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiMasterTest();
}

void test_send_laterDataNack() {
	expectedError = TWI_Master_TooMuchDataTransmitted;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[1]);
	expectTwiWriteOp(TW_MT_DATA_ACK, 0, sendData[2]);
	expectTwiControlOp(TW_MT_DATA_NACK, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiMasterTest();
}

void test_send_NoInfoInterrupt() {
	expectedError = TWI_No_Info_Interrupt;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(TW_NO_INFO, 0);
	twiSend(testDevice, sendBuffer);
	startTwiMasterTest();
}

void test_send_BusError() {
	expectedError = TWI_Bus_Error;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(TW_BUS_ERROR, _BV(TWSTO));
	twiSend(testDevice, sendBuffer);
	startTwiMasterTest();
}

void test_send_IllegalStatus() {
	// This should never happen in hardware.
	expectedError = TWI_Illegal_Status;
	expectTwiWriteOp(TW_START, 0, testDevice.address);
	expectTwiWriteOp(TW_MT_SLA_ACK, 0, sendData[0]);
	expectTwiControlOp(ILLEGAL_STATUS, 0);
	twiSend(testDevice, sendBuffer);
	startTwiMasterTest();
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
	startTwiMasterTest();
	assertReceivedNoData();
}

void test_receive_successfull_1() {
	receiveBuffer.size = 1;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, 0);
	expectTwiReadOp(TW_MR_DATA_NACK, _BV(TWSTO), expectedByte);
	twiReceive(testDevice, receiveBuffer);
	startTwiMasterTest();
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
	startTwiMasterTest();
	assertReceivedData(expectedReceiveData, sizeof(expectedReceiveData));
}

void test_receive_arbitrationLost() {
	expectedError = TWI_Arbitration_Lost;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_ARB_LOST, 0);
	twiReceive(testDevice, receiveBuffer);
	startTwiMasterTest();
	assertReceivedNoData();
}

void test_receive_arbitrationLost_afterSlaAck() {
	expectedError = TWI_Arbitration_Lost;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, _BV(TWEA));
	expectTwiControlOp(TW_MR_ARB_LOST, 0);
	twiReceive(testDevice, receiveBuffer);
	startTwiMasterTest();
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
	startTwiMasterTest();
	assertReceivedData(expectedReceiveData, 3); // Only 3 bytes received
}

void test_receive_slaNack() {
	expectedError = TWI_SlaveAddress_NoAck;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_NACK, _BV(TWSTO));
	twiReceive(testDevice, receiveBuffer);
	startTwiMasterTest();
	assertReceivedNoData();
}

void test_receive_NoInfoInterrupt() {
	expectedError = TWI_No_Info_Interrupt;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, _BV(TWEA));
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedByte);
	expectTwiControlOp(TW_NO_INFO, 0);
	twiReceive(testDevice, receiveBuffer);
	startTwiMasterTest();
	assertReceivedByte(expectedByte);
}

void test_receive_BusError() {
	expectedError = TWI_Bus_Error;
	expectTwiWriteOp(TW_START, 0, receiveAddress);
	expectTwiControlOp(TW_MR_SLA_ACK, _BV(TWEA));
	expectTwiReadOp(TW_MR_DATA_ACK, _BV(TWEA), expectedByte);
	expectTwiControlOp(TW_BUS_ERROR, _BV(TWSTO));
	twiReceive(testDevice, receiveBuffer);
	startTwiMasterTest();
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
	startTwiMasterTest();
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
	startTwiMasterTest();
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
	startTwiMasterTest();
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
	startTwiMasterTest();
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
	startTwiMasterTest();
	assertReceivedNoData();
}
