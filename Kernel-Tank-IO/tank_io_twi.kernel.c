
#include <kernel.h>
#include <tank_os_common.h>
#include <kernel/kernel_init.h>
#include <kernel/twi/driver/driver.h>
#include <kernel/twi/rpc/server.h>

const byte TwiSlaveAddress = TANK_IO_ADDRESS;

static byte server_io_buffer[256];

static __attribute__ ((noinline)) void init_rpc_server() {
    twi_rpc_server_init((TWIBuffer) { server_io_buffer, sizeof(server_io_buffer) });
}
KERNEL_INIT(init_rpc_server)
