
#include <unity.h>
#include <platform/twi/master.h>
#include <twi/driver/helper.h>
#include <mocks/port.h>

void setUp() {
    init_fake_port();
	twi_tests_setUp();
	defaultControlFlags = _BV(TWEN) | _BV(TWINT) | _BV(TWIE);
	BOOL res = twi_init(testPin1, testPin2);
    TEST_ASSERT_TRUE_MESSAGE(res, "failed to initialize twi master.");
}

void tearDown() {
}

TwiHandlerStatus twi_test_handle_interrupt(TwiStatus status) {
	return twi_handle(status);
}

void test_initialization() {
	TEST_ASSERT_EQUAL_HEX(_BV(TWEN) | _BV(TWIE), TWCR);
	TEST_ASSERT_EQUAL_HEX(0x00, TWDR);
    BOOL res = twi_init(testPin1, testPin2);
    TEST_ASSERT_FALSE_MESSAGE(res, "Second initialization of twi master should not be possible");
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
