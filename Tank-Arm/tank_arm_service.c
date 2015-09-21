#define RPC_CLIENT_IMPLEMENTATION
#include "tank_arm_service.h"

int tank_arm_position_format(ClientResultPrinter print, void *results, uint16_t results_length) {
    if (results_length != sizeof(pos_t)) return 0;
    pos_t pos = * (pos_t*) results;
    return print("Arm motor position: %i", pos);
}
