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
	
	// TODO assign correct pins, correct motor-properties

	INIT_2DirPins_MOTOR(LeftMotor, MOTOR_NORMAL, PinA1, Timer1A, PinA1)
	INIT_2DirPins_MOTOR(RightMotor, MOTOR_NORMAL, PinA1, Timer1B, PinA1)
}
KERNEL_INIT(init_tank_motors)

#endif