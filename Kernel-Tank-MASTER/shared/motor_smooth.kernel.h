#ifndef _MOTOR_SMOOTH_KERNEL_2_KERNEL_
#define _MOTOR_SMOOTH_KERNEL_2_KERNEL_

#define SMOOTH_MOTOR_A LeftMotor
#define SMOOTH_MOTOR_B RightMotor

#include <kernel/kernel_init.h>
#include <kernel/devices/motor_smooth_pair.kernel.h>

// Whether ticks are enabled or not - motor_smooth_pair_tick() can
// be called safely.
void motor_smooth_pair_enable_tick(BOOL enabled) __attribute__((weak));
void motor_smooth_pair_enable_tick(BOOL enabled);

void init_smooth_motors() {
	#ifndef MOTOR_ADJUSTMENT_STEP
	#error MOTOR_ADJUSTMENT_STEP must be defined for the smooth motor control!
	#endif
	
	INIT_SMOOTH_MOTOR(LeftMotor, LeftMotorBase, MOTOR_ADJUSTMENT_STEP)
	INIT_SMOOTH_MOTOR(RightMotor, RightMotorBase, MOTOR_ADJUSTMENT_STEP)
}
KERNEL_INIT(init_smooth_motors)

#endif