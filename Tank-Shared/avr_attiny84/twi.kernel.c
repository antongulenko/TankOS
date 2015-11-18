
/*
#include <tank_os_common.h>
#include <twi/rpc/server.h>
#include <twi/rpc/client.h>
#include <platform/twi/slave.h>
#include <platform/twi/master.h>
#include <platform/kernel_init.h>
#include <platform/platform_Avr/avr_attiny84/port.h>

static byte twi_io_buffer[128];

#define PIN_DATA  pinA6
#define PIN_CLOCK pinA4

// The following functions should be KERNEL_INITed in another kernel module as appropriate.

void init_twi_frequency() {
	// The TWI bit rate: Maximal TWI frequency (400 KHz).
	// 100 = Medium frequency, 250 = Minimal frequency
	TWBR = 17; // 0..255
	TWSR &= ~(_BV(TWPS1) | _BV(TWPS0)); // No prescaler
}

void init_rpc_server(uint8_t client_address) {
    TWAR = client_address << 1 & ~_BV(TWGCE); // Disable General-Call (GC) recognition
    TWAMR = 0;
    twi_init_slave(PIN_DATA, PIN_CLOCK);
    twi_rpc_server_init((TWIBuffer) { twi_io_buffer, sizeof(twi_io_buffer) });
}

void init_rpc_client() {
    init_twi_frequency();
    twi_init(PIN_DATA, PIN_CLOCK);
    twi_rpc_client_init((TWIBuffer) { twi_io_buffer, sizeof(twi_io_buffer) });
}
*/
