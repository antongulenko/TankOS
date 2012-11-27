
#include <anton_std.h>
#include <kernel/devices/timer_m1284P.h>
#include <kernel/devices/motor_smooth_pair.h>
#include "timer.h"

// Use the millisecond-interrupt as source for the smooth motor ticks.
void motor_smooth_pair_enable_tick(BOOL enabled) {
	if (enabled) enableTimerInterrupt(millisecond_timer_B);
	else disableTimerInterrupt(millisecond_timer_B);
}

// Use second timer provided by timer.kernel.c.
// Will be bound by the linker to the appropriate timer-ISR.
void SMOOTH_MOTOR_TIMER_INTERRUPT() __attribute__ ((interrupt));
void SMOOTH_MOTOR_TIMER_INTERRUPT() {
	motor_smooth_pair_tick();
}
