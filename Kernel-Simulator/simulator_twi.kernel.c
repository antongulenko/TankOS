
#include <kernel/kernel_init.h>
#include <kernel/twi/driver/driver.h>

void init_simulator_slave_address() {
    TWAR = 123;
}
KERNEL_INIT(init_simulator_slave_address)

void init_rpc_server_buffer(); // Tank-Shared/twi.kernel.c
KERNEL_INIT(init_rpc_server_buffer)
