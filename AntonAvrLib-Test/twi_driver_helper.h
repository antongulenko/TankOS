/*
 * twi_driver_helper.h
 *
 *  Created on: 12.12.2012
 *      Author: Anton
 */

#ifndef twi_driver_HELPER_H_
#define twi_driver_HELPER_H_

#include <anton_std.h>
#include <kernel/TWI/twi_driver.h>
#include <kernel/TWI/twi_driver_handler.h>

extern const byte TwiSlaveAddress;

extern byte defaultControlFlags;

extern TWIDevice testDevice;
extern const byte receiveAddress;

extern byte sendData[6];
extern TWIBuffer sendBuffer;
extern byte receiveData[10];
extern TWIBuffer receiveBuffer;

extern byte expectedReceiveData[6];
extern byte expectedByte;

extern TwiError expectedError;

#define ILLEGAL_STATUS 0xcc

void twi_tests_setUp();

void expectTwiWriteOp(TwiStatus status, byte controlRegister, byte dataRegister);
void expectTwiReadOp(TwiStatus status, byte controlRegister, byte dataRegister);
void expectTwiControlOp(TwiStatus status, byte controlRegister);

void assertReceivedData(byte *data, int size);
void assertReceivedNoData();
void assertReceivedByte(byte expectedByte);

void startTwiTest();

#endif /* twi_driver_HELPER_H_ */
