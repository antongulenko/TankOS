
#include <tank_os_common.h>
#include <platform/kernel_init.h>
#include "tank_arm_address.h"

void init_rpc_server(uint8_t addr); // Tank-Shared/twi.kernel.c

void init_tank_arm_twi() {
    init_rpc_server(TANK_ARM_ADDRESS);
}
KERNEL_INIT(init_tank_arm_twi)
