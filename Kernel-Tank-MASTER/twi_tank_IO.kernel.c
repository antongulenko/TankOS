
// This file contains the implementation of the twi_tank_IO functions.
// (that's why this is a kernel module). See kernel/twi/twi_rpc_client.h.
#define RPC_CLIENT_IMPLEMENTATION
#include "twi_tank_IO.h"

TWIDevice tank_IO = { TANK_IO_ADDRESS };

void tankIO_wait() {
	while (!tankIO_isInitialized() != TANK_IO_INITIALIZED) {
		delay_ms(20);
	}
}
