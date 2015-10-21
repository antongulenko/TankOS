
#define RPC_CLIENT_IMPLEMENTATION
#include "hardware.h"

int query_reset_condition_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(ResetCondition)) return 0;
    ResetCondition *res = (ResetCondition*) results;
    return print("Reset condition: %s", resetConditionString(*res));
}

int query_milliseconds_format(ClientResultPrinter print, void *results, uint16_t results_length) {
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
    return print("Running: %02u:%02u:%02u.%03u", h, m, s, millis);
}

int query_memory_info_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(MemoryInfo)) return 0;
    MemoryInfo *res = (MemoryInfo*) results;
    return print("Memory used: %i of %i (Available %i, Static used %i)", res->used_dynamic,
                 res->total_dynamic, res->available_dynamic, res->used_static);
}

int query_init_status_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(InitStatus)) return 0;
    InitStatus *res = (InitStatus*) results;
    return print("Initialized: %s, Software resets: %i, Unclean resets: %i",
                 BOOL_STR(res->initialized), res->software_resets, res->unclean_resets);
}

int query_eeprom_resets_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(uint16_t)) return 0;
    uint16_t *res = (uint16_t*) results;
    return print("Resets: %i", *res);
}
