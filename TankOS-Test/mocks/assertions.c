
#include "assertions.h"
#include <kernel/twi/rpc/strings.h>
#include <string.h>
#include <stdio.h>
#include <unity.h>

void assert_status(RpcClientResult expected, RpcClientResult result) {
    char buf1[500], buf[500];
    char *status_str = RpcClientResult_string(result);
    strcpy(buf1, status_str);
    char *expected_str = RpcClientResult_string(expected);
    sprintf(buf, "Unexpected RPC call status %s, expected %s", buf1, expected_str);

    TEST_ASSERT_EQUAL_INT8_ARRAY_MESSAGE(&expected, &result, sizeof(result), buf);
}

void assert_correct_status(RpcClientResult result) {
    assert_status((RpcClientResult) { TWI_RPC_call_success, TWI_RPC_handler_ok, TWI_RPC_no_error }, result);
}

void assert_correct_async_status(RpcClientResult result) {
    assert_status((RpcClientResult) { TWI_RPC_call_success_oneway, TWI_RPC_handler_unknown, TWI_RPC_unknown }, result);
}
