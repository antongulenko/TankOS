#ifndef _MOTOR_SMOOTH_KERNEL_INTERRUPT_KERNEL_
#define _MOTOR_SMOOTH_KERNEL_INTERRUPT_KERNEL_

// Use the millisecond-interrupt as source for the smooth motor ticks.
void motor_smooth_pair_enable_tick(BOOL enabled) {
	if (enabled) enableTimerInterrupt(CLOCKTIMER_B);
	else disableTimerInterrupt(CLOCKTIMER_B);
}

ISR(CLOCKISR_B) {
	motor_smooth_pair_tick();
}

#endif