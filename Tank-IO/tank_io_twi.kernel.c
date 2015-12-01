
#include <tank_os_common.h>
#include <twi/rpc/client.h>
#include <platform/kernel_init.h>
#include "tank_io_address.h"

static byte twi_io_buffer_2[256];

void init_rpc_server(uint8_t addr); // Tank-Shared/twi.kernel.c
void init_twi_frequency();

void init_tank_io_twi() {
    init_rpc_server(TANK_IO_ADDRESS);
    init_twi_frequency();
    twi_rpc_client_init((TWIBuffer) { twi_io_buffer_2, sizeof(twi_io_buffer_2) });
}
KERNEL_INIT(init_tank_io_twi)
