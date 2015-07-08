
#include "idle.h"
#include <tank_os_common.h>

void processor_idle() {
	sleep_enable();
	set_sleep_mode(SLEEP_MODE_IDLE);
	sei(); // Just in case, if this is called form an ISR
	sleep_cpu();
}

void processor_loop_idle() {
	while (TRUE) {
		processor_idle();
	}
}
