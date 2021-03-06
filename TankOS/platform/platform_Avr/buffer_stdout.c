/*
 * buffer_stdout.c
 *
 * Created: 19.07.2015 11:29:59
 *  Author: anton
 */

#include "buffer_stdout.h"
#include <process/mutex.h>
#include <kernel/klib.h>
#include <string.h>

static Mutex flush_mutex;

static uint16_t start, len;
static char *ring;
static uint16_t ring_size;
static uint16_t dropped_chars;

FILE buffer_stdout_stream = FDEV_SETUP_STREAM(buffer_stdout_putchar, NULL, _FDEV_SETUP_WRITE);

int buffer_stdout_putchar(char c, FILE *f) {
	if (f != &buffer_stdout_stream) return EOF;
	if (len >= ring_size) {
		dropped_chars += 1;
		return EOF;
	}
	ring[(start + len) % ring_size] = c;
	len++;
	return c;
}

void init_buffer_stdout(char *buffer_ring, uint16_t the_ring_size, BOOL redirect_stdout) {
    start = len = dropped_chars = 0;
	flush_mutex = mutex_create();
	ring_size = the_ring_size;
	ring = buffer_ring;
	if (redirect_stdout) {
		stdout = &buffer_stdout_stream;
	}
}

BufferStatus buffer_stdout_status() {
	return (BufferStatus) { ring_size, len, dropped_chars };
}

uint16_t buffer_stdout_flush(char *target_buffer, uint16_t size) {
	mutex_lock(flush_mutex);
	if (size > len) {
		size = len;
	}

	uint16_t rest = ring_size - start;
	if (rest < size) {
		memcpy(target_buffer, ring + start, rest);
		memcpy(target_buffer + rest, ring, size - rest);
	} else {
		memcpy(target_buffer, ring + start, size);
	}

	start = (start + size) % ring_size;
	len -= size;
	dropped_chars = 0;
	mutex_release(flush_mutex);
	return size;
}

uint16_t buffer_stdout_flush_to_eeprom(char *eeprom_address, uint16_t size) {
    char *buf = (char*) alloca(size);
    if (!buf) {
        klog("baf\n"); // buffer alloca failed
        return 0;
    }
    uint16_t flushed = buffer_stdout_flush(buf, size);

    for (uint16_t i = 0; i < flushed; i++) {
        eeprom_update_byte((uint8_t*) eeprom_address + i, (uint8_t) buf[i]);
    }

    return flushed;
}
