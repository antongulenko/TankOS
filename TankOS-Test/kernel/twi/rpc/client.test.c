/*
 *  Created on: 14.12.2012
 *      Author: Anton
 */

#include <mocks/twi_driver_master.h>
#include <kernel/twi/rpc/client.h>
#include <kernel/twi/driver/driver.h>
#include <string.h>
#include <unity.h>

byte clientLibraryBuffer[100];

byte parameterData[] = { 9, 1, 0xdd, 0xac };
const TWIBuffer parameterBuffer = { parameterData, sizeof(parameterData) };
byte responseBufferData[3];
TWIBuffer responseBuffer = { responseBufferData, sizeof(responseBufferData) };
byte serverResponseData[] = { 0x0, 0x0, 0xaa, 0xbb, 0x92, 0x0 };
const byte responseData[] = { 0xaa, 0xbb, 0x92 };

const byte operation = 0xab;
RpcClientResult status;
RpcClientResult expectedStatus;
RpcHandlerStatus handlerStatus = 44;

BOOL expectedSend, expectedReceive;

void setUp() {
    // Library initialization
    fake_twi_driver_master_setUp();
    memset(clientLibraryBuffer, 0, sizeof(clientLibraryBuffer));
    twi_rpc_client_init((TWIBuffer) { clientLibraryBuffer, sizeof(clientLibraryBuffer) });

    memset(responseBufferData, 0, sizeof(responseBufferData));
    responseBuffer.size = sizeof(responseBufferData);
    serverResponseData[0] = serverResponseData[1] = serverResponseData[5] = 0;
    memcpy(serverResponseData + 2, responseData, sizeof(responseData));

    // This will be returned by mocked twi master driver.
    mock_driver.returnedReceiveData.data = serverResponseData;
    mock_driver.returnedReceiveData.size = 0;

    status.status = TWI_RPC_call_error_unknown;
    status.server_status = TWI_RPC_invalid;
    expectedSend = expectedReceive = FALSE;
}

void tearDown() {
    // Make sure parameters have been transmitted correctly
    if (expectedSend) {
        TEST_ASSERT_EQUAL_INT_MESSAGE(sizeof(parameterData) + 1, mock_driver.sendBuffer.size,
                "Parameter send buffer has wrong size");
        TEST_ASSERT_EQUAL_UINT8_MESSAGE(operation, mock_driver.sendBuffer.data[0],
                "Operation byte not correctly set");
        TEST_ASSERT_EQUAL_UINT8_ARRAY_MESSAGE(parameterData, mock_driver.sendBuffer.data + 1, sizeof(parameterData),
                "Parameter data is not correct");
    }

    // Check returned values
    TEST_ASSERT_EQUAL_INT_MESSAGE(expectedStatus.status, status.status, "Unexpected rpc client result status");
    TEST_ASSERT_EQUAL_INT_MESSAGE(expectedStatus.server_status, status.server_status, "Unexpected rpc client server status");
    TEST_ASSERT_EQUAL_INT_MESSAGE(expectedStatus.handler_status, status.handler_status, "Unexpected rpc handler status");
	TEST_ASSERT_FALSE_MESSAGE(mock_driver.waitedForCompletion, "Should not have waited for completion");
    TEST_ASSERT_EQUAL_MESSAGE(expectedSend, mock_driver.sent, "rpc call should (not) have sent something");
    TEST_ASSERT_EQUAL_MESSAGE(expectedReceive, mock_driver.received, "rpc call should (not) have received something");
}

void prepare_expected_status(RpcClientStatus s, RpcServerStatus ser, RpcHandlerStatus handler_status) {
    expectedStatus.status = s;
    expectedStatus.server_status = ser;
    expectedStatus.handler_status = handler_status;
    if (expectedReceive) {
        serverResponseData[0] = ser;
        serverResponseData[1] = handler_status;
        serverResponseData[5] = operation;
    }
}

void expect_pseudo_oneway() {
    mock_driver.returnedReceiveData.size = 3;
    serverResponseData[2] = operation;
}

void test_rpc_send() {
    expectedSend = expectedReceive = TRUE;
    prepare_expected_status(TWI_RPC_call_success, TWI_RPC_no_error, handlerStatus);
    mock_driver.returnedReceiveData.size = sizeof(serverResponseData);
    status = twi_rpc(test_device, operation, parameterBuffer, responseBuffer);
}

void test_rpc_oneway() {
    expectedSend = TRUE; expectedReceive = FALSE;
    prepare_expected_status(TWI_RPC_call_success_oneway, TWI_RPC_unknown, TWI_RPC_handler_unknown);
	status = twi_rpc_async(test_device, operation, parameterBuffer);
}

void test_rpc_pseudo_oneway() {
    expectedSend = expectedReceive = TRUE;
    expect_pseudo_oneway();
    prepare_expected_status(TWI_RPC_call_success, TWI_RPC_no_error, handlerStatus);
	status = twi_rpc_void(test_device, operation, parameterBuffer);
}

void test_send_buffer_too_small() {
    expectedSend = FALSE; expectedReceive = FALSE;
    prepare_expected_status(TWI_RPC_call_error_send_buffer_too_small, TWI_RPC_invalid, TWI_RPC_handler_unknown);

    byte big_data[sizeof(clientLibraryBuffer)] = { 1 };
    TWIBuffer big_buffer = (TWIBuffer) { big_data, sizeof(big_data) };
    status = twi_rpc(test_device, operation, big_buffer, responseBuffer);
}

void test_send_buffer_too_small_oneway() {
    expectedSend = FALSE; expectedReceive = FALSE;
    prepare_expected_status(TWI_RPC_call_error_send_buffer_too_small, TWI_RPC_invalid, TWI_RPC_handler_unknown);

    byte big_data[sizeof(clientLibraryBuffer)] = { 1 };
    TWIBuffer big_buffer = (TWIBuffer) { big_data, sizeof(big_data) };
    status = twi_rpc_async(test_device, operation, big_buffer);
}

void test_send_buffer_too_small_pseudo_oneway() {
    expectedSend = FALSE; expectedReceive = FALSE;
    prepare_expected_status(TWI_RPC_call_error_send_buffer_too_small, TWI_RPC_invalid, TWI_RPC_handler_unknown);

    byte big_data[sizeof(clientLibraryBuffer)] = { 1 };
    TWIBuffer big_buffer = (TWIBuffer) { big_data, sizeof(big_data) };
    status = twi_rpc_void(test_device, operation, big_buffer);
}

void test_twi_error() {
    expectedSend = TRUE; expectedReceive = TRUE;
    prepare_expected_status(TWI_RPC_call_error_driver, TWI_RPC_invalid, TWI_RPC_handler_unknown);
    mock_driver.returnedReceiveData.size = sizeof(serverResponseData);
    twi_error = TWI_Bus_Error;
    status = twi_rpc(test_device, operation, parameterBuffer, responseBuffer);
}

void test_oneway_twi_error() {
    expectedSend = TRUE; expectedReceive = FALSE;
    prepare_expected_status(TWI_RPC_call_error_driver, TWI_RPC_unknown, TWI_RPC_handler_unknown);
    twi_error = TWI_Bus_Error;
    status = twi_rpc_async(test_device, operation, parameterBuffer);
}

void test_pseudo_oneway_twi_error() {
    expectedSend = TRUE; expectedReceive = TRUE;
    prepare_expected_status(TWI_RPC_call_error_driver, TWI_RPC_invalid, TWI_RPC_handler_unknown);
    expect_pseudo_oneway();
    twi_error = TWI_Bus_Error;
    status = twi_rpc_void(test_device, operation, parameterBuffer);
}

void test_server_error() {
    expectedSend = TRUE; expectedReceive = TRUE;
    prepare_expected_status(TWI_RPC_call_error_server, TWI_RPC_error, handlerStatus);
    expect_pseudo_oneway();
    status = twi_rpc(test_device, operation, parameterBuffer, responseBuffer);
}

void test_pseudo_oneway_server_error() {
    expectedSend = TRUE; expectedReceive = TRUE;
    prepare_expected_status(TWI_RPC_call_error_server, TWI_RPC_error, handlerStatus);
    expect_pseudo_oneway();
    status = twi_rpc_void(test_device, operation, parameterBuffer);
}

void test_wrong_operation_byte() {
    expectedSend = TRUE; expectedReceive = TRUE;
    prepare_expected_status(TWI_RPC_call_error_wrong_operation_byte, TWI_RPC_no_error, handlerStatus);
    mock_driver.returnedReceiveData.size = sizeof(serverResponseData);
    serverResponseData[sizeof(serverResponseData) - 1] = 0xdd;
    status = twi_rpc(test_device, operation, parameterBuffer, responseBuffer);
}

void test_pseudo_oneway_wrong_operation_byte() {
    expectedSend = TRUE; expectedReceive = TRUE;
    prepare_expected_status(TWI_RPC_call_error_wrong_operation_byte, TWI_RPC_no_error, handlerStatus);
    expect_pseudo_oneway();
    serverResponseData[2] = 0xdd;
    status = twi_rpc_void(test_device, operation, parameterBuffer);
}
