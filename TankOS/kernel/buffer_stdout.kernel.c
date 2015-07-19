
#include "kernel_init.h"
#include <tank_os_common.h>
#include <stdio.h>

#ifndef STDOUT_BUFFER_SIZE
#define STDOUT_BUFFER_SIZE 512
#endif

static int currentOffset = 0;
char stdout_buffer[STDOUT_BUFFER_SIZE];

int buffer_stdout_putchar(char c, FILE *f) {
	if (currentOffset > STDOUT_BUFFER_SIZE) return EOF;
	stdout_buffer[currentOffset++] = c;
	return c;
}

static FILE stdout_buffer_stream = FDEV_SETUP_STREAM(buffer_stdout_putchar, NULL, _FDEV_SETUP_WRITE);

// TODO -- also implement a getchar. For this, change the last
// parameter above to _FDEV_SETUP_RW, and add a getchar function instead of NULL

__attribute__ ((noinline)) void init_stdio_buffer() {
	stdout = &stdout_buffer_stream;
}
KERNEL_INIT(init_stdio_buffer)
