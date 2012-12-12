/*
 * twi_raw_master.test.c
 *
 *  Created on: 12.12.2012
 *      Author: Anton
 */

#include <unity.h>
#include "twi_raw_helper.h"

void setUp() {
	twi_tests_setUp();
	twi_init_slave();
}

void tearDown() {
}

void test_initialization() {
	TEST_ASSERT_EQUAL_HEX(TwiSlaveAddress, TWAR);
	TEST_ASSERT_EQUAL_HEX(TwiBitRateValue, TWBR);
	TEST_ASSERT_EQUAL_HEX(TwiPrescalerMask, TWSR);
	TEST_ASSERT_EQUAL_HEX(_BV(TWEN) | _BV(TWIE) | _BV(TWEA), TWCR);
	TEST_ASSERT_EQUAL_HEX(0xFF, TWDR);
}

TWIBuffer twi_handleMasterRequest() {
	return (TWIBuffer) { 0 };
}

void twi_handleMasterTransmission(TWIBuffer twi_buffer) {
}

// These tests are implemented in twi_raw_baseTests.c
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
