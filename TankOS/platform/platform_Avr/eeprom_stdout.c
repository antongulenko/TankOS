#include "eeprom_stdout.h"
#include <kernel/klib.h>
#include <string.h>

uint32_t eeprom_stdout_dropped;
size_t buffer_size;
static uint16_t bytes_written = 0;
static uint16_t *eeprom_bytes_written; // Copy of bytes_written
static char *eeprom_buffer;

FILE eeprom_stdout_stream = FDEV_SETUP_STREAM(eeprom_stdout_putchar, NULL, _FDEV_SETUP_WRITE);

static void write_extra_newlines() {
	for (uint8_t i = 0; i < 3 && bytes_written + i + 1 <= buffer_size; i++) {
		eeprom_update_byte((byte*) eeprom_buffer + bytes_written + i, '\n');
	}
}

int eeprom_stdout_putchar(char c, FILE *f) {
	if (f != &eeprom_stdout_stream) return EOF;
	if (bytes_written >= buffer_size) {
		eeprom_stdout_dropped += 1;
		return EOF;
	}
	eeprom_update_byte((byte*) eeprom_buffer + bytes_written, c);
	bytes_written++;
	eeprom_update_word(eeprom_bytes_written, bytes_written);
	if (c == '\n')
		write_extra_newlines();
	return c;
}

void init_eeprom_stdout(char *_eeprom_buffer, size_t _eeprom_buffer_size, uint16_t *_eeprom_bytes_written) {
	buffer_size = _eeprom_buffer_size;
	eeprom_buffer = _eeprom_buffer;
	eeprom_bytes_written = _eeprom_bytes_written;

	eeprom_stdout_dropped = 0;
	bytes_written = 0;
	eeprom_update_word(eeprom_bytes_written, 0);

	stdout = &eeprom_stdout_stream;
}
