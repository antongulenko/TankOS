
#include <tank_os_common.h>

static EEMEM uint16_t bad_isrs;

ISR(BADISR_vect) {
	uint16_t val = eeprom_read_word(&bad_isrs);
	eeprom_update_word(&bad_isrs, val+1);

	asm("jmp 0"); // Jump to the reset vector, like the default BADISR routine.
}
