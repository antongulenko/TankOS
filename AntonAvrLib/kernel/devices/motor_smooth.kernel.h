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
extern void motor_smooth_set_call_frequency(PSmoothMotor motor, uint16_t timesPerSecond);
void motor_smooth_tick(PSmoothMotor motor);

void initSmoothMotor(PSmoothMotor motor) {
	motor->mutex = mutex_create();
}

#endif