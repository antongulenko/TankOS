
#ifndef TEST_ASSERTIONS_H_
#define TEST_ASSERTIONS_H_

#include <kernel/twi/rpc/strings.h>

void assert_status(RpcClientResult expected, RpcClientResult result);
void assert_correct_status(RpcClientResult result);

#endif
