
#include "kernel.h"
#include <kernel/buffer_stdout.h>

int main() {
	buffer_stdout_flush_to_eeprom((void*) 2, 256);
}
