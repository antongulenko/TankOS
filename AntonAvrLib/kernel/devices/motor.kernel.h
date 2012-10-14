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

void initMotor(PMotor motor) {
	// Configure the timer. These are configurations,
	// that should work fine for most motors, but might also 
	// be changed elsewhere.
	setTimerClockSelect(motor->pwmTimer->timer, prescale_1);
	motor->pwmTimer->timer->flags |= TIMER_RESOLUTION_full;
	setWaveformGenerationMode(motor->pwmTimer->timer, pwm_phase_correct);
	
	setPinOutput(motor->direction);
	if (!(motor->flags & MOTOR_TWO_DIR_PINS))
		setPinOne(motor->direction);
	
	// Enables output-compare and sets initial timer-compare-value
	stopMotor(motor);
}

void initMotor2Pins(PMotor2Pins motor) {
	initMotor((PMotor) motor);
	setPinOutput(motor->direction2);
	setPinZero(motor->motor.direction);
	setPinZero(motor->direction2);
}

#endif