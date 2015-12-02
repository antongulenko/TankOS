#include <platform/platform_Avr/eeprom_stdout.h>
#include <platform/platform_Avr/kernel_init.h>
#include <tank_os_commonh.>

#define BUFFER_SIZE 64
static EEMEM uint16_t bytes_written;
static EEMEM char buffer[BUFFER_SIZE];

static void do_init_eeprom_stdout() {
	init_eeprom_stdout(buffer, BUFFER_SIZE, &bytes_written);
}
KERNEL_INIT(do_init_eeprom_stdout)
