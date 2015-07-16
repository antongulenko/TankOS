
#include <kernel.h>
#include <tank_os_common.h>
#include <kernel/kernel_init.h>
#include <kernel/twi/driver/driver.h>
#include <kernel/twi/rpc/server.h>

const byte TwiSlaveAddress = TANK_IO_ADDRESS;

static byte server_io_buffer[256];

static void do_init_rpc_server() {
    twi_rpc_server_init((TWIBuffer) { server_io_buffer, sizeof(server_io_buffer) });
}
KERNEL_INIT(do_init_rpc_server)
