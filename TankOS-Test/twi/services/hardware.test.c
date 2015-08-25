
#include <twi/services/hardware.h>

#include <twi/rpc/server.h>
#include <twi/rpc/client.h>
#include <mocks/rpc_client.h>
#include <mocks/printf.h>
#include <twi/rpc/client_functions_registry.h>

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
    uint16_t used = ALLOCATED_HEAP_END - DYNAMIC_MEMORY_START + 2 + (RAMEND - MALLOC_END);
    uint16_t available = MALLOC_END - ALLOCATED_HEAP_END - 2;

    TEST_ASSERT_EQUAL_UINT16_MESSAGE(total, info.total_dynamic, "Wrong total dynamic memory reported");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(DYNAMIC_MEMORY_START - RAMSTART, info.used_static, "Wrong used static memory reported");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(used, info.used_dynamic, "Wrong used dynamic memory reported");
    TEST_ASSERT_EQUAL_UINT16_MESSAGE(available, info.available_dynamic, "Wrong available dynamic memory reported");
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


void test_format_results_reset_condition() {
    init_mock_printf();
    ClientFunctionRegistryEntry f = lookupClientFunction("query_reset_condition");
    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_NOT_NULL(f->format_results);

    ResetCondition res = BrownOutReset;

    f->format_results(mock_printf, &res, sizeof(res));
    TEST_ASSERT_EQUAL_STRING("Reset condition: Brown Out Reset (0x20)", mock_printf_buffer);
}

void test_format_results_milliseconds() {
    init_mock_printf();
    ClientFunctionRegistryEntry f = lookupClientFunction("query_milliseconds");
    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_NOT_NULL(f->format_results);

    uint32_t res = 6443055;

    f->format_results(mock_printf, &res, sizeof(res));
    TEST_ASSERT_EQUAL_STRING("Running: 01:47:23.055", mock_printf_buffer);
}

void test_format_results_memory_info() {
    init_mock_printf();
    ClientFunctionRegistryEntry f = lookupClientFunction("query_memory_info");
    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_NOT_NULL(f->format_results);

    MemoryInfo res;
    res.total_dynamic = 1000;
    res.used_static = 100;
    res.used_dynamic = 222;
    res.available_dynamic = 1000 - 222;

    f->format_results(mock_printf, &res, sizeof(res));
    TEST_ASSERT_EQUAL_STRING("Memory used: 222 of 1000 (Available 778, Static used 100)", mock_printf_buffer);
}

void test_format_results_init_status() {
    init_mock_printf();
    ClientFunctionRegistryEntry f = lookupClientFunction("query_init_status");
    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_NOT_NULL(f->format_results);

    InitStatus res;
    res.initialized = TRUE;
    res.software_resets = 22;

    f->format_results(mock_printf, &res, sizeof(res));
    TEST_ASSERT_EQUAL_STRING("Initialized: true, Software resets: 22", mock_printf_buffer);
}

void test_format_results_eeprom_resets() {
    init_mock_printf();
    ClientFunctionRegistryEntry f = lookupClientFunction("query_eeprom_resets");
    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_NOT_NULL(f->format_results);

    uint16_t res = 44;

    f->format_results(mock_printf, &res, sizeof(res));
    TEST_ASSERT_EQUAL_STRING("Resets: 44", mock_printf_buffer);
}
