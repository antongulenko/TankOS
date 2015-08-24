
#include <twi/rpc/client_functions.h>
#include <twi/rpc/client_functions_registry.h>
#include <unity.h>
#include <mocks/rpc_client.h>
#include <mocks/printf.h>

void setUp() {
}

void tearDown() {
}

void test_client_func_registry() {
    ClientFunctionRegistryEntry f = lookupClientFunction("rpcNotifyAsync");
    TEST_ASSERT_EQUAL_MESSAGE(&rpcNotifyAsync, f->function, "rpcNotifyAsync client function not registered");
    f = lookupClientFunction("rpcAsync");
    TEST_ASSERT_EQUAL_MESSAGE(&rpcAsync, f->function, "rpcAsync client function not registered");
    f = lookupClientFunction("rpcNormal");
    TEST_ASSERT_EQUAL_MESSAGE(&rpcNormal, f->function, "rpcNormal client function not registered");
    f = lookupClientFunction("rpcVar");
    TEST_ASSERT_EQUAL_MESSAGE(&rpcVar, f->function, "rpcVar client function not registered");

    f = lookupClientFunction("blahblah");
    TEST_ASSERT_NULL_MESSAGE(f, "Wrong function was found.");
}

void test_client_registry_format() {
    init_mock_printf();
    TestResStruct s = (TestResStruct) { 22, 2.2, { 'a', 'b', 'c' } };

    ClientFunctionRegistryEntry f = lookupClientFunction("rpcVar");
    TEST_ASSERT_NOT_NULL(f->format_results);
    f->format_results(mock_printf, &s, sizeof(s));
    TEST_ASSERT_EQUAL_STRING("rpcVar: 22 2.2 abc", mock_printf_buffer);
    init_mock_printf();

    f = lookupClientFunction("rpcNormal");
    TEST_ASSERT_NOT_NULL(f->format_results);
    f->format_results(mock_printf, &s, sizeof(s));
    TEST_ASSERT_EQUAL_STRING("rpcNormal: 22 2.2 abc", mock_printf_buffer);
    init_mock_printf();

    f = lookupClientFunction("rpcNoargs");
    TEST_ASSERT_NOT_NULL(f->format_results);
    f->format_results(mock_printf, &s, sizeof(s));
    TEST_ASSERT_EQUAL_STRING("rpcNoargs: 22 2.2 abc", mock_printf_buffer);
    init_mock_printf();

    f = lookupClientFunction("rpcVoid");
    TEST_ASSERT_NULL_MESSAGE(f->format_results, "rpcVoid should not have formatter function");
    f = lookupClientFunction("rpcNotify");
    TEST_ASSERT_NULL_MESSAGE(f->format_results, "rpcNotify should not have formatter function");
}

