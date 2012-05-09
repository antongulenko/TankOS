#ifndef _MOTOR_SMOOTH_KERNEL_KERNEL_
#define _MOTOR_SMOOTH_KERNEL_KERNEL_

#define SMOOTH_TICK_FREQ 1000
#define SMOOTH_MOTOR_A LeftMotor
#define SMOOTH_MOTOR_B RightMotor

#include <kernel/kernel_init.h>
#include <kernel/devices/motor_smooth_pair.kernel.h>

void smooth_enable_millisecond_tick(BOOL enabled) {
	if (enabled) enableTimerInterrupt(CLOCKTIMER_B);
	else disableTimerInterrupt(CLOCKTIMER_B);
}

ISR(CLOCKISR_B) {
	smooth_millisecond_tick();
}

void init_smooth_motors() {
	INIT_SMOOTH_MOTOR(LeftMotor, LeftMotorBase, 40, 3000)
	INIT_SMOOTH_MOTOR(RightMotor, RightMotorBase, 40, 3000)
}
KERNEL_INIT(init_smooth_motors)

#endif