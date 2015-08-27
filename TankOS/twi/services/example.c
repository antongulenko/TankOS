
#define RPC_CLIENT_IMPLEMENTATION
#include "example.h"

int test_read_value_format(int (*print)(const char *fmt, ...), void *results, uint16_t results_length) {
    if (results_length != sizeof(int16_t)) return 0;
    int16_t *res = (int16_t*) results;
    return print("Test value: %i", (int) *res);
}
