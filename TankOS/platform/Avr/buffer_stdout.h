/*
 * Created: 19.07.2015 11:28:28
 *  Author: anton
 */

#ifndef BUFFER_STDOUT_H_
#define BUFFER_STDOUT_H_

#include <tank_os_common.h>
#include <stdio.h>

#ifndef STDOUT_BUFFER_SIZE
#define STDOUT_BUFFER_SIZE 2048
#endif

void init_buffer_stdout();

typedef struct BufferStatus {
	uint16_t capacity;
	uint16_t used;
	uint32_t dropped;
} BufferStatus;

BufferStatus buffer_stdout_status();

// Copy the stdout buffer into the target buffer and return the number of
// chars copied. Reset dropped_chars and start filling the internal buffer from the beginning.
uint16_t buffer_stdout_flush(char *target_buffer, uint16_t size);

extern FILE buffer_stdout_stream;
int buffer_stdout_putchar(char c, FILE *f);

// Flush part of the stream to temporary buffer and copy the buffer to the given eeprom address.
// Consecutive invokations with the same eeprom_address will overwrite previous calls.
uint16_t buffer_stdout_flush_to_eeprom(char *eeprom_address, uint16_t max_bytes);

#endif /* BUFFER_STDOUT_H_ */
