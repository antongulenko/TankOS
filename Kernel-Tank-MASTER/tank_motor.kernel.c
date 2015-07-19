/*
 * tank_motor.kernel
 *
 * Created: 28.04.2012 11:01:19
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include <kernel/devices/timer_m1284P.h>
#include <kernel/devices/motor.h>
#include <kernel/devices/motor_smooth_pair.h>
#include "tank_motor.h"

DEFINE_MOTOR_2Speed_IMPL(LeftMotorBase)
DEFINE_MOTOR_2Speed_IMPL(RightMotorBase)
DEFINE_SMOOTH_MOTOR_IMPL(LeftMotor)
DEFINE_SMOOTH_MOTOR_IMPL(RightMotor)

static void init_tank_motors() {
	SmoothMotor1 = LeftMotor;
	SmoothMotor2 = RightMotor;

	// No exact conversion, because we have the full voltage range!
	#define TANK_MOTOR_FLAGS MOTOR_NORMAL

	INIT_MOTOR_2Speed(LeftMotorBase, TANK_MOTOR_FLAGS, Timer0A, Timer0B)
	INIT_MOTOR_2Speed(RightMotorBase, TANK_MOTOR_FLAGS, Timer2A, Timer2B)
	INIT_SMOOTH_MOTOR(LeftMotor, LeftMotorBase, MOTOR_ADJUSTMENT_STEP)
	INIT_SMOOTH_MOTOR(RightMotor, RightMotorBase, MOTOR_ADJUSTMENT_STEP)
}
KERNEL_INIT(init_tank_motors)
