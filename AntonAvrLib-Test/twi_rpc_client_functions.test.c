/*
 * twi_rpc_client_functions.test.c
 *
 *  Created on: 15.12.2012
 *      Author: Anton
 */

#include "TestRpcClient.h"
#include "fake_twi_driver.h"

byte bufferData[100];
const TWIBuffer clientBuffer = { bufferData, sizeof(bufferData) };

void setUp() {
	fake_twi_driver_setUp();
	twi_rpc_client_init(clientBuffer);
}

void tearDown() {
}
