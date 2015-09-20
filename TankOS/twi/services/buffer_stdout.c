
#define RPC_CLIENT_IMPLEMENTATION
#include "buffer_stdout.h"

int query_stdout_buffer_status_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(BufferStatus)) return 0;
    BufferStatus *status = (BufferStatus*) results;
    return print("Stdout status: used %i of %i, %i dropped", status->used, status->capacity, status->dropped);
}

int flush_stdout_buffer_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    uint16_t size = *(uint16_t*) results;
    if (size > results_length - sizeof(uint16_t))
        size = results_length - sizeof(uint16_t);
    char *str = results + sizeof(uint16_t);
    if (size == 0)
        return print("No new stdout");
    else
        return print("Stdout: %.*s", size, str);
}
