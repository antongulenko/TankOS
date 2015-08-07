
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

void test_memory_info() {
    init_reset_condition();
    DYNAMIC_MEMORY_START = 0x200;
    ALLOCATED_HEAP_END = 0x500;
    MALLOC_END = RAMEND - 0x100;
    MALLOC_START = DYNAMIC_MEMORY_START + 0x100;

    MemoryInfo info;
    RpcClientResult status = query_memory_info(test_device, &info);
    assert_correct_status(status);

    uint16_t total = RAMEND - DYNAMIC_MEMORY_START;
    uint16_t used = ALLOCATED_HEAP_END - DYNAMIC_MEMORY_START + 2;
    uint16_t available = RAMEND - ALLOCATED_HEAP_END - 2;

    TEST_ASSERT_EQUAL_UINT16_MESSAGE(total, info.total_dynamic, "Wrong total dynamic memory reported");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(DYNAMIC_MEMORY_START - RAMSTART, info.used_static, "Wrong used static memory reported");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(used, info.used_dynamic, "Wrong used dynamic memory reported");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(available, info.available_dynamic, "Wrong available dynamic memory reported");
    TEST_ASSERT_EQUAL_FLOAT_MESSAGE((float) used / (float) total, info.used_dynamic_f, "Wrong used dynamic memory (float) reported");
    TEST_ASSERT_EQUAL_FLOAT_MESSAGE((float) available / (float) total, info.available_dynamic_f, "Wrong available dynamic (float) memory reported");
}

extern byte __initialization_complete_mask;
extern uint16_t software_reset_counter;

void test_init_status() {
    __initialization_complete_mask = 0;
    software_reset_counter = 0;
    increment_software_reset_counter();
    boot_completed();

    InitStatus result;
    RpcClientResult status = query_init_status(test_device, &result);
    assert_correct_status(status);

    TEST_ASSERT_EQUAL_UINT16_MESSAGE(1, result.software_resets, "Wrong software resets");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(1, result.initialized, "Not initialized");
}

void test_eeprom_resets() {
    uint16_t current = getEepromResets();
    increment_eeprom_reset_counter();
    increment_eeprom_reset_counter();
    uint16_t resets;
    RpcClientResult status = query_eeprom_resets(test_device, &resets);
    assert_correct_status(status);
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(current + 2, resets, "Wrong hardware resets");
}
