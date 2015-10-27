#define RPC_CLIENT_IMPLEMENTATION
#include "tank_arm_service.h"

int tank_arm_position_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(pos_t)) return 0;
    pos_t pos = * (pos_t*) results;
    return print("Motor position: %i", pos);
}

int tank_arm_get_max_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(speed_t)) return 0;
    speed_t freq = * (speed_t*) results;
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
