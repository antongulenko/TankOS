/*
 * tank_motor.kernel
 *
 * Created: 28.04.2012 11:01:19
 *  Author: Anton
 */ 

#ifndef _TANK_MOTOR_KERNEL_
#define _TANK_MOTOR_KERNEL_

#include <kernel/kernel_init.h>
#include <kernel/devices/timer_m1284P.kernel.h>
#include <kernel/devices/motor.kernel.h>
#include <kernel/devices/motor_smooth_pair.kernel.h>
#include "tank_motor.h"

#ifndef MOTOR_ADJUSTMENT_STEP
#error MOTOR_ADJUSTMENT_STEP must be defined for the smooth motor control!
#endif

void init_tank_motors() {
	// No exact conversion, because we have the full voltage range!
	#define TANK_MOTOR_FLAGS MOTOR_NORMAL
	
	INIT_MOTOR_2Speed(LeftMotorBase, TANK_MOTOR_FLAGS, Timer0A, Timer0B)
	INIT_MOTOR_2Speed(RightMotorBase, TANK_MOTOR_FLAGS, Timer2A, Timer2B)
	INIT_SMOOTH_MOTOR(LeftMotor, LeftMotorBase, MOTOR_ADJUSTMENT_STEP)
	INIT_SMOOTH_MOTOR(RightMotor, RightMotorBase, MOTOR_ADJUSTMENT_STEP)
}
KERNEL_INIT(init_tank_motors)

#endif