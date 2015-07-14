
#ifndef TEST_ASSERTIONS_H_
#define TEST_ASSERTIONS_H_

#include <kernel/twi/rpc/strings.h>

void assert_status(RpcClientResult expected, RpcClientResult result);
void assert_correct_status(RpcClientResult result);
void assert_correct_async_status(RpcClientResult result);

#define TEST_ASSERT_EQUAL_BITS(expected, actual) \
    TEST_ASSERT_BITS(0xffffffff, actual, condition);
#define TEST_ASSERT_EQUAL_BITS_MESSAGE(expected, actual, message) \
    TEST_ASSERT_BITS_MESSAGE(0xffffffff, actual, condition, message);

#endif
