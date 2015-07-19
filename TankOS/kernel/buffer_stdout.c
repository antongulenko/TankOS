/*
 * buffer_stdout.c
 *
 * Created: 19.07.2015 11:29:59
 *  Author: anton
 */

#include "buffer_stdout.h"
#include <kernel/processes/mutex/mutex.h>
#include <string.h>

static Mutex flush_mutex;

static uint16_t start, len;
static char ring[STDOUT_BUFFER_SIZE];
static uint16_t dropped_chars;

// TODO -- also implement a getchar. For this, change the last
// parameter above to _FDEV_SETUP_RW, and add a getchar function instead of NULL
FILE buffer_stdout_stream = FDEV_SETUP_STREAM(buffer_stdout_putchar, NULL, _FDEV_SETUP_WRITE);

int buffer_stdout_putchar(char c, FILE *f) {
	if (f != &buffer_stdout_stream) return EOF;
	if (len >= sizeof(ring)) {
		dropped_chars += 1;
		return EOF;
	}
	ring[(start + len) % sizeof(ring)] = c;
	len++;
	return c;
}

void init_buffer_stdout() {
    start = len = dropped_chars = 0;
	flush_mutex = mutex_create();
}

BufferStatus buffer_stdout_status() {
	return (BufferStatus) { sizeof(ring), len, dropped_chars };
}

uint16_t buffer_stdout_flush(char *target_buffer, uint16_t size) {
	mutex_lock(flush_mutex);
	if (size > len) {
		size = len;
	}

	uint16_t rest = sizeof(ring) - start;
	if (rest < size) {
		memcpy(target_buffer, ring + start, rest);
		memcpy(target_buffer + rest, ring, size - rest);
	} else {
		memcpy(target_buffer, ring + start, size);
	}

	start = (start + size) % sizeof(ring);
	len -= size;
	dropped_chars = 0;
	mutex_release(flush_mutex);
	return size;
}
