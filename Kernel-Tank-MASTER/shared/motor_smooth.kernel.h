#ifndef _MOTOR_SMOOTH_KERNEL_KERNEL_
#define _MOTOR_SMOOTH_KERNEL_KERNEL_

#define SMOOTH_MOTOR_A LeftMotor
#define SMOOTH_MOTOR_B RightMotor

#include <kernel/kernel_init.h>
#include <kernel/devices/motor_smooth_pair.kernel.h>

void smooth_enable_tick(BOOL enabled) {
	if (enabled) enableTimerInterrupt(CLOCKTIMER_B);
	else disableTimerInterrupt(CLOCKTIMER_B);
}

ISR(CLOCKISR_B) {
	smooth_motor_tick();
}

void init_smooth_motors() {
	#ifndef MOTOR_ADJUSTMENT_STEP
	#define MOTOR_ADJUSTMENT_STEP 200
	#endif
	
	INIT_SMOOTH_MOTOR(LeftMotor, LeftMotorBase, MOTOR_ADJUSTMENT_STEP)
	INIT_SMOOTH_MOTOR(RightMotor, RightMotorBase, MOTOR_ADJUSTMENT_STEP)
}
KERNEL_INIT(init_smooth_motors)

#endif