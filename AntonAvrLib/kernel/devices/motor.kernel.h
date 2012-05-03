/*
 * motor.kernel
 *
 * Created: 22.04.2012 15:38:29
 *  Author: Anton
 */ 

#ifndef _MOTOR_KERNEL_
#define _MOTOR_KERNEL_

#include "../kernel_init.h"
#include "motor.h"

// This must be called from another init-routine, after the motors have been initialized.
void initMotor(PMotor motor) {
	setTimerCompareValue(motor->pwmTimer, 0);
	setPinOutput(motor->direction);
}

void initMotor2Pins(PMotor2Pins motor) {
	initMotor((PMotor) motor);
	setPinOutput(motor->direction2);
	stopMotor((PMotor) motor); // For the sake of setting both direction pins to zero. Not necessary for 1-pin-motors.
}

#endif