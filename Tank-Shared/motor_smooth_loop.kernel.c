
#include <anton_std.h>
#include "motor_smooth.h"

// Nothing to do here, motor_smooth_pair_tick() can be called safely,
// regardless of whether this was called with TRUE or FALSE before.
void motor_smooth_pair_enable_tick(BOOL enabled) {
}	

void smooth_motor_full_tick() {
	motor_smooth_pair_tick();
	// the motors_smooth_pair_tick takes ~1320 cycles = ~65us
	_delay_us(935);
}

void smooth_motor_full_ticks(uint16_t number) {
	while (number > 1) {
		number--;
		smooth_motor_full_tick();
	}
}

void smooth_motor_tick_forever() {
	while (1) smooth_motor_full_tick();
}
