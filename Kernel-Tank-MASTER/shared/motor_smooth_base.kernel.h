#ifndef _MOTOR_SMOOTH_BASE_KERNEL_KERNEL_
#define _MOTOR_SMOOTH_BASE_KERNEL_KERNEL_

#define SMOOTH_MOTOR_A LeftMotor
#define SMOOTH_MOTOR_B RightMotor

#include <kernel/kernel_init.h>
#include <kernel/devices/motor_smooth_pair.kernel.h>

void init_smooth_motors() {
	#ifndef MOTOR_ADJUSTMENT_STEP
	#error MOTOR_ADJUSTMENT_STEP must be defined for the smooth motor control!
	#endif
	
	INIT_SMOOTH_MOTOR(LeftMotor, LeftMotorBase, MOTOR_ADJUSTMENT_STEP)
	INIT_SMOOTH_MOTOR(RightMotor, RightMotorBase, MOTOR_ADJUSTMENT_STEP)
}
KERNEL_INIT(init_smooth_motors)

#endif