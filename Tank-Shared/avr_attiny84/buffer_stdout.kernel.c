#include <platform/platform_Avr/buffer_stdout.h>
#include <platform/platform_Avr/kernel_init.h>

static char ring[64];

static void do_init_buffer_stdout() {
	init_buffer_stdout(ring, sizeof(ring), TRUE);
}
KERNEL_INIT(do_init_buffer_stdout)
