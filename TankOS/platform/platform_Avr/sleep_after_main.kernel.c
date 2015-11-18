
#include <platform/platform_Avr/idle.h>

// This makes the initial main()-process idle when finishing (like all other processes).
void MainProcessEnd() __attribute__((section (".fini1")));
void MainProcessEnd() {
	processor_loop_idle();
}
