
#include <kernel/kernel_init.h>
#include <kernel/twi/driver/driver.h>

const byte TwiSlaveAddress = 123;

void init_rpc_server_buffer(); // Tank-Shared/twi.kernel.c
KERNEL_INIT(init_rpc_server_buffer)
