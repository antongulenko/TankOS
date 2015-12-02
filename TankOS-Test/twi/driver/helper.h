/*
 *  Created on: 12.12.2012
 *      Author: Anton
 */

#ifndef twi_driver_test_HELPER_H_
#define twi_driver_test_HELPER_H_

#include <tank_os_common.h>
#include <platform/twi/driver.h>

#define DEFAULT_TWCR _BV(TWEN) | _BV(TWINT) | _BV(TWIE)

// Only zero for master-only mode. Slave needs TWEA set at the end of any transmission.
extern byte twea_flag;

// testDevice.address contains the send-address, receiveAddress is a separate value.
extern TWIDevice testDevice;
#define SEND_ADDRESS TWI_SLA_WRITE(testDevice)
#define RECEIVE_ADDRESS TWI_SLA_READ(testDevice)

// These buffers are used by tests when sending or receiving
extern byte sendData[6];
extern TWIBuffer sendBuffer;
extern byte receiveData[10];
extern TWIBuffer receiveBuffer;

// This contains example data to be used by tests
extern byte expectedReceiveData[6];
extern byte expectedByte;

// This is set by tests to indicate, that the current test expects twi_driver to
// produce an error
extern TwiError expectedError;

// This should be used when passing an illegal status code to twi_driver
#define ILLEGAL_STATUS 0xcc

// Must be called in setUp(). Cleans up all internal state, like the list of
// expectations.
void twi_tests_setUp();

// This adds expectations to the current test.
void expectTwiWriteOp(TwiStatus status, byte controlRegister, byte dataRegister);
void expectTwiReadOp(TwiStatus status, byte controlRegister, byte dataRegister);
void expectTwiControlOp(TwiStatus status, byte controlRegister);
void expectTwiNoackOp(TwiStatus status, byte controlRegister, byte data, BOOL isWrite);

// This can be used at the end of a receiver-test to assert received data.
// Will assert the received data, and also that no more data than that was received.
void assertReceivedData(byte *data, int size);
void assertReceivedNoData();
void assertReceivedByte(byte expectedByte);

// This must be called after all expectations have been set up and the initial
// twi_driver call has been made (like twiSend())
void startTwiTest(byte initialControlRegister);
void startTwiMasterTest();
void startTwiSlaveTest();

#endif /* twi_driver_test_HELPER_H_ */
