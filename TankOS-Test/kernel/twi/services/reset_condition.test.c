
#include <kernel/twi/services/reset_condition.h>
#include <kernel/twi/rpc/server.h>
#include <kernel/twi/rpc/client.h>
#include <kernel/reset_condition.h>
#include <native_simulation.h>
#include <unity.h>
#include <mocks/assertions.h>
#include <mocks/rpc_client.h>
#include <string.h>

RpcClientResult status;
ResetCondition expectedCondition;
ResetCondition condition;

byte clientLibraryBuffer[100];
byte serverLibraryBuffer[100];

void setUp() {
    memset(clientLibraryBuffer, 0, sizeof(clientLibraryBuffer));
    memset(serverLibraryBuffer, 0, sizeof(serverLibraryBuffer));
    twi_rpc_client_init((TWIBuffer) { clientLibraryBuffer, sizeof(clientLibraryBuffer) });
    twi_rpc_server_init((TWIBuffer) { serverLibraryBuffer, sizeof(serverLibraryBuffer) });

    memset(&status, 0, sizeof(status));
    memset(&condition, 0, sizeof(condition));
    memset(&expectedCondition, 0, sizeof(expectedCondition));
}

void tearDown() {
    assert_correct_status(status);
    TEST_ASSERT_BITS_MESSAGE(0xffffffff, expectedCondition, condition,
        "Wrong reset condition bits returned");
}

void test_query_condition_1() {
    MCUSR = _BV(PORF) | _BV(BORF);
    expectedCondition = PowerOnReset | BrownOutReset;
    init_reset_condition();

    status = query_reset_condition(test_device, &condition);
}

void test_query_condition_2() {
    MCUSR = 0;
    expectedCondition = OtherReset;
    init_reset_condition();

    status = query_reset_condition(test_device, &condition);
}
