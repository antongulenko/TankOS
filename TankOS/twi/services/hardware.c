
#define RPC_CLIENT_IMPLEMENTATION
#include "hardware.h"

int query_reset_condition_format(int (*print)(const char *fmt, ...), void *results, uint16_t results_length) {
    if (results_length != sizeof(ResetCondition)) return 0;
    ResetCondition *res = (ResetCondition*) results;
    uint16_t x = *res; // enums use 2 bytes on x86 platform... Try to be platform-independent.
    return print("Reset condition: %s (0x%.2x)", resetConditionString(*res), (uint8_t) (x | (x >> 8)));
}

int query_milliseconds_format(int (*print)(const char *fmt, ...), void *results, uint16_t results_length) {
    if (results_length != sizeof(uint32_t)) return 0;
    uint32_t res = *(uint32_t*) results;
    uint32_t h = 0, m = 0, s = 0, millis = 0;
    millis = res % 1000;
    if (res > 1000) {
        res /= 1000;
        s = res % 60;
        if (res > 60) {
            res /= 60;
            m = res % 60;
            h = res / 60;
        }
    }
    return print("Running: %u:%u:%u.%u", h, m, s, millis);
}

int query_memory_info_format(int (*print)(const char *fmt, ...), void *results, uint16_t results_length) {
    if (results_length != sizeof(MemoryInfo)) return 0;
    MemoryInfo *res = (MemoryInfo*) results;
    return print("Memory used: %i of %i (Available %i, Static used %i)", res->used_dynamic,
                 res->total_dynamic, res->available_dynamic, res->used_static);
}

int query_init_status_format(int (*print)(const char *fmt, ...), void *results, uint16_t results_length) {
    if (results_length != sizeof(InitStatus)) return 0;
    InitStatus *res = (InitStatus*) results;
    return print("Initialized: %s, Software resets: %i", BOOL_STR(res->initialized), res->software_resets);
}

int query_eeprom_resets_format(int (*print)(const char *fmt, ...), void *results, uint16_t results_length) {
    if (results_length != sizeof(uint16_t)) return 0;
    uint16_t *res = (uint16_t*) results;
    return print("Resets: %i", *res);
}
