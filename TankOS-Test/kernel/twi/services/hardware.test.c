
#include <kernel/twi/services/hardware.h>

#include <kernel/twi/rpc/server.h>
#include <kernel/twi/rpc/client.h>
#include <mocks/rpc_client.h>

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

void test_hardware_reset() {
    hardware_reset_triggered = 0;
    RpcClientResult status = do_hardware_reset(test_device);
    assert_correct_async_status(status);
    TEST_ASSERT_MESSAGE(hardware_reset_triggered, "Hardware reset not triggered");
}

#include <stdio.h>

void test_memory_info() {
    init_reset_condition();
    __brkval = 0x500;

    MemoryInfo info;
    RpcClientResult status = query_memory_info(test_device, &info);
    assert_correct_status(status);

    uint16_t total = 0xffff - 0x200;
    uint16_t used = 0x500 - 0x200 + 2;
    uint16_t available = 0xffff - 0x500 - 2;
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(total, info.total_dynamic, "Wrong used dynamic memory reported");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(0x200 - 0x100, info.used_static, "Wrong used dynamic memory reported");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(used, info.used_dynamic, "Wrong used dynamic memory reported");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(available, info.available_dynamic, "Wrong available dynamic memory reported");
    TEST_ASSERT_EQUAL_FLOAT_MESSAGE((float) used / (float) total, info.used_dynamic_f, "Wrong used dynamic memory (float) reported");
    TEST_ASSERT_EQUAL_FLOAT_MESSAGE((float) available / (float) total, info.available_dynamic_f, "Wrong available dynamic (float) memory reported");
}
