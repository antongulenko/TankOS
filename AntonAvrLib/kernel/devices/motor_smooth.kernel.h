/*
 * motor_smooth.kernel
 *
 * Created: 22.04.2012 15:38:29
 *  Author: Anton
 */ 

#ifndef _MOTOR_SMOOTH_KERNEL_
#define _MOTOR_SMOOTH_KERNEL_

#include "motor.kernel.h"

// This must be implemented. 
void motor_smooth_start_tick(PSmoothMotor motor);
void motor_smooth_stop_tick(PSmoothMotor motor);

// This must be used when implementing above function. Implemented in motor_smooth.c
void motor_smooth_tick(PSmoothMotor motor);

void initSmoothMotor(PSmoothMotor motor) {
	motor->mutex = mutex_create();
}

#endif