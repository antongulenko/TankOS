
#include <kernel/kernel_init.h>

void init_rpc_server(uint8_t addr); // Tank-Shared/twi.kernel.c

void init_tank_io_twi() {
    init_rpc_server(123);
}
KERNEL_INIT(init_tank_io_twi)
