
#include <kernel/kernel_init.h>
#include <kernel/twi/driver/driver.h>
#include "tank_io_address.h"

void init_tank_io_slave_address() {
    TWAR = TANK_IO_ADDRESS;
}
KERNEL_INIT(init_tank_io_slave_address)

void init_rpc_server_buffer(); // Tank-Shared/twi.kernel.c
KERNEL_INIT(init_rpc_server_buffer)
