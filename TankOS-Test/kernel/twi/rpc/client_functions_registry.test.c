
#include <kernel/twi/rpc/client_functions.h>
#include <kernel/twi/rpc/client_functions_registry.h>
#include <unity.h>
#include <mocks/rpc_client.h>

void setUp() {
}

void tearDown() {
}

void test_client_func_registry() {
    RpcQueryFunction f = lookupClientFunction("rpcNotifyAsync");
    TEST_ASSERT_EQUAL_MESSAGE(&rpcNotifyAsync, f, "rpcNotifyAsync client function not registered");
    f = lookupClientFunction("rpcAsync");
    TEST_ASSERT_EQUAL_MESSAGE(&rpcAsync, f, "rpcAsync client function not registered");
    f = lookupClientFunction("rpcNormal");
    TEST_ASSERT_EQUAL_MESSAGE(&rpcNormal, f, "rpcNormal client function not registered");
    f = lookupClientFunction("rpcVar");
    TEST_ASSERT_EQUAL_MESSAGE(&rpcVar, f, "rpcVar client function not registered");

    f = lookupClientFunction("blahblah");
    TEST_ASSERT_NULL_MESSAGE(f, "Wrong function was found.");
}
