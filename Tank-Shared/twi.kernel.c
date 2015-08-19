
#include <tank_os_common.h>
#include <kernel/twi/rpc/server.h>
#include <kernel/twi/rpc/client.h>

// These variables will be linked for twi_
// The TWI bit rate: Maximal TWI frequency (400 KHz).
// 100 = Medium frequency, 250 = Minimal frequency
const byte TwiBitRateValue = 17;
const byte TwiPrescalerMask = 0;

static byte twi_io_buffer[256];

// One of the following should be KERNEL_INITed in another kernel module

void init_rpc_server_buffer() {
    twi_rpc_server_init((TWIBuffer) { twi_io_buffer, sizeof(twi_io_buffer) });
}

void init_rpc_client_buffer() {
    twi_rpc_client_init((TWIBuffer) { twi_io_buffer, sizeof(twi_io_buffer) });
}
