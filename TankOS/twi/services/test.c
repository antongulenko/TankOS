
#define RPC_CLIENT_IMPLEMENTATION
#include "test.h"

int test_read_value_format(int (*print)(const char *fmt, ...), void *results, uint16_t results_length) {
    if (results_length != sizeof(int32_t)) return 0;
    int32_t *res = (int32_t*) results;
    return print("Test value: %u", *res);
}
