
#define RPC_CLIENT_IMPLEMENTATION
#include "buffer_stdout.h"

int query_stdout_buffer_status_format(int (*print)(const char *fmt, ...), void *results, uint16_t results_length) {
    if (results_length != sizeof(BufferStatus)) return 0;
    BufferStatus *status = (BufferStatus*) results;
    return print("Stdout status: used %i of %i, %i dropped", status->used, status->capacity, status->dropped);
}

int flush_stdout_buffer_format(int (*print)(const char *fmt, ...), void *results, uint16_t results_length) {
    uint16_t size = *(uint16_t*) results;
    if (size > results_length - sizeof(uint16_t))
        size = results_length - sizeof(uint16_t);
    char *str = results + sizeof(uint16_t);
    return print("%.*s", size, str);
}
