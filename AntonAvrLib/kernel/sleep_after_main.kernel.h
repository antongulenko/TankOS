#ifndef _SLEEP_AFTER_MAIN_KERNEL_
#define _SLEEP_AFTER_MAIN_KERNEL_

#include "../misc/idle.h"

// This makes the initial main()-process idle when finishing (like all other processes).
void MainProcessEnd() __attribute__((section (".fini1")));
void MainProcessEnd() {
	processor_loop_idle();
}

#endif