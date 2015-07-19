/*
 * buffer_stdout.c
 *
 * Created: 19.07.2015 11:29:59
 *  Author: anton
 */ 

#include "buffer_stdout.h"

static int pos = 0;
char stdout_buffer[STDOUT_BUFFER_SIZE];

FILE stdout_buffer_stream = FDEV_SETUP_STREAM(buffer_stdout_putchar, NULL, _FDEV_SETUP_WRITE);

int buffer_stdout_putchar(char c, FILE *f) {
	if (f != &stdout_buffer_stream) return EOF;
	if (pos >= sizeof(stdout_buffer)) return EOF;
	stdout_buffer[pos++] = c;
	return c;
}

// TODO -- also implement a getchar. For this, change the last
// parameter above to _FDEV_SETUP_RW, and add a getchar function instead of NULL
