
#include <tank_os_common.h>
#include <kernel/twi/rpc/server.h>
#include <kernel/twi/rpc/client.h>
#include <kernel/kernel_init.h>

void init_twi_frequency() {
    // The TWI bit rate: Maximal TWI frequency (400 KHz).
    // 100 = Medium frequency, 250 = Minimal frequency
    TWBR = 17; // 0..255
	TWSR = 0; // _BV(TWPS1) | _BV(TWPS0)
}
KERNEL_INIT(init_twi_frequency)

static byte twi_io_buffer[256];

// One of the following should be KERNEL_INITed in another kernel module

void init_rpc_server_buffer() {
    twi_rpc_server_init((TWIBuffer) { twi_io_buffer, sizeof(twi_io_buffer) });
}

void init_rpc_client_buffer() {
    twi_rpc_client_init((TWIBuffer) { twi_io_buffer, sizeof(twi_io_buffer) });
}
