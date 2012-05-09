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
#include "tank_motor.h"

void init_tank_motors() {
	INIT_2DirPins_MOTOR(LeftMotorBase, MOTOR_NORMAL, PinC4, Timer1B, PinC5)
	INIT_2DirPins_MOTOR(RightMotorBase, MOTOR_NORMAL, PinC2, Timer1A, PinC3)
}
KERNEL_INIT(init_tank_motors)

#endif