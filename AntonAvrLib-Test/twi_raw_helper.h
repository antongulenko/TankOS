/*
 * twi_raw_helper.h
 *
 *  Created on: 12.12.2012
 *      Author: Anton
 */

#ifndef TWI_RAW_HELPER_H_
#define TWI_RAW_HELPER_H_

#include <anton_std.h>
#include <kernel/TWI/twi_raw.h>
#include <kernel/TWI/twi_raw_handler.h>

extern const byte TwiSlaveAddress;

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

#endif /* TWI_RAW_HELPER_H_ */
