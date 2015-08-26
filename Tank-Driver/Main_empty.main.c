
#include "kernel.h"
#include <platform/Avr/buffer_stdout.h>

int main() {
	buffer_stdout_flush_to_eeprom((void*) 2, 256);
}
