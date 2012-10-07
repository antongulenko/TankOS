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
	// Voltage range: 2..4,2 V
	// Our resolution is full 16 bit unsigned (although the actual resolution is just 10 bit)
	// 0..65535 -> 26214..55049, delta: 28835
	#define MOTOR_MIN_VALUE 26214
	#define MOTOR_MAX_VALUE 55049
	
	#define TANK_MOTOR_FLAGS								\
		(MOTOR_INVERSE_SPEED | MOTOR_EXACT_CONVERSION |		\
		MOTOR_INVERSE_DIRECTION)
	
	Timer1->flags |= TIMER_RESOLUTION_10bit;
	INIT_2DirPins_MOTOR(LeftMotorBase, TANK_MOTOR_FLAGS, PinC4, Timer1B, PinC5)
	INIT_2DirPins_MOTOR(RightMotorBase, TANK_MOTOR_FLAGS, PinC2, Timer1A, PinC3)
	
	LeftMotorBase->minValue = MOTOR_MIN_VALUE;
	RightMotorBase->minValue = MOTOR_MIN_VALUE;
	LeftMotorBase->maxValue = MOTOR_MAX_VALUE;
	RightMotorBase->maxValue = MOTOR_MAX_VALUE;
}
KERNEL_INIT(init_tank_motors)

#endif