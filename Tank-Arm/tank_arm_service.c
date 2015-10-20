#define RPC_CLIENT_IMPLEMENTATION
#include "tank_arm_service.h"

int tank_arm_position_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(pos_t)) return 0;
    pos_t pos = * (pos_t*) results;
    return print("Motor position: %i", pos);
}

int tank_arm_get_max_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(freq_t)) return 0;
    freq_t freq = * (freq_t*) results;
    return print("Max motor frequency: %i", freq);
}

int tank_arm_set_max_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(uint16_t)) return 0;
    BOOL success = * (BOOL*) results;
    if (success)
        return print("Setting frequency successful");
    else
        return print("Frequency was too high!");
}

int tank_arm_get_ticks_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(uint32_t)) return 0;
    uint32_t ticks = * (uint32_t*) results;
    return print("Step motor ticks: %i", ticks);
}
