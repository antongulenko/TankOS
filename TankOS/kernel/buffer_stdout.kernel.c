
#include "buffer_stdout.h"
#include "kernel_init.h"
#include <stdio.h>

void init_stdio_buffer() {
	stdout = &stdout_buffer_stream;
}
KERNEL_INIT(init_stdio_buffer)
