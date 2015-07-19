/*
 * buffer_stdout.c
 *
 * Created: 19.07.2015 11:29:59
 *  Author: anton
 */ 

#include "buffer_stdout.h"
#include <string.h>
#include <kernel/processes/mutex/mutex.h>

static Mutex flush_mutex;

static uint32_t dropped_chars = 0;
static char ring[STDOUT_BUFFER_SIZE];
static uint16_t start = 0;
static uint16_t len = 0;

int buffer_stdout_putchar(char c, FILE *f) {
	if (f != &stdout_buffer_stream) return EOF;
	if (len >= sizeof(ring)) {
		dropped_chars++;
		return EOF;
	}
	ring[start + len % sizeof(ring)] = c;
	len++;
	return c;
}

// TODO -- also implement a getchar. For this, change the last
// parameter above to _FDEV_SETUP_RW, and add a getchar function instead of NULL
FILE stdout_buffer_stream = FDEV_SETUP_STREAM(buffer_stdout_putchar, NULL, _FDEV_SETUP_WRITE);

void init_buffer_stdout() {
	flush_mutex = mutex_create();
}

BufferStatus stdout_buffer_status() {
	return (BufferStatus) {
		.capacity = sizeof(ring),
		.used = len,
		.dropped = dropped_chars,
	};
}

uint16_t stdout_buffer_flush(char *target_buffer, uint16_t size) {
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
	
	start = start + size % sizeof(ring);
	len -= size;
	dropped_chars = 0;
	mutex_release(flush_mutex);
	return size;
}
