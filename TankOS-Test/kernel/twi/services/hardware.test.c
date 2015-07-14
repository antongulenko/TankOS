
#include <kernel/twi/services/hardware.h>

#include <kernel/twi/rpc/server.h>
#include <kernel/twi/rpc/client.h>
#include <mocks/rpc_client.h>

#include <native_simulation.h>
#include <unity.h>
#include <mocks/assertions.h>
#include <string.h>

byte clientLibraryBuffer[100];
byte serverLibraryBuffer[100];

void setUp() {
    memset(clientLibraryBuffer, 0, sizeof(clientLibraryBuffer));
    memset(serverLibraryBuffer, 0, sizeof(serverLibraryBuffer));
    twi_rpc_client_init((TWIBuffer) { clientLibraryBuffer, sizeof(clientLibraryBuffer) });
    twi_rpc_server_init((TWIBuffer) { serverLibraryBuffer, sizeof(serverLibraryBuffer) });
}

void tearDown() {
}

void test_reset_condition() {
    MCUSR = _BV(PORF) | _BV(BORF);
    init_reset_condition();

    ResetCondition condition;
    RpcClientResult status = query_reset_condition(test_device, &condition);
    assert_correct_status(status);
    TEST_ASSERT_EQUAL_BITS_MESSAGE(PowerOnReset | BrownOutReset, condition,
        "Wrong reset condition bits returned");
}

void test_milliseconds() {
    uint32_t expectedTime = 443355;
    milliseconds_running = expectedTime;

    uint32_t time;
    RpcClientResult status = query_milliseconds(test_device, &time);
    assert_correct_status(status);
    TEST_ASSERT_EQUAL_UINT32_MESSAGE(expectedTime, time,
        "Wrong milliseconds value returned");
}
