
#include "buffer_stdout.h"
#include "kernel_init.h"
#include <stdio.h>

static void _init_stdout_buffer() {
	stdout = &buffer_stdout_stream;
	init_buffer_stdout();
}
KERNEL_INIT(_init_stdout_buffer)
