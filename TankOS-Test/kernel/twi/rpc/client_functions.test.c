/*
 * twi_rpc_client_functions.test.c
 *
 *  Created on: 15.12.2012
 *      Author: Anton
 */

#include <mocks/rpc_client.h>
#include <mocks/twi_driver_master.h>
#include <string.h>
#include <unity.h>

byte clientData[100];

TestResStruct expectedResults = { 3.219f, { 'a', '0', 'x' } };

BOOL expectingParameters, expectingResults;

void setUp() {
	fake_twi_driver_master_setUp();
	memset(clientData, 0, sizeof(clientData));
	twi_rpc_client_init((TWIBuffer) { clientData, sizeof(clientData) });

	returnedReceiveData.size = sizeof(TestResStruct);
	returnedReceiveData.data = (byte*) &expectedResults;

	expectingParameters = expectingResults = FALSE;
}

void tearDown() {
	TEST_ASSERT_EQUAL_MESSAGE(expectingParameters, sent,
			"tpc call did not behave as expected (sending data)");
	TEST_ASSERT_EQUAL_MESSAGE(expectingResults, received,
			"tpc call did not behave as expected (receiving data)");
}
