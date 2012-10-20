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

static void initMotorTimer(PTimer timer) {
	// Configure the timer. These are configurations,
	// that should work fine for most motors, but might also 
	// be changed elsewhere.
	setTimerClockSelect(timer->timer, prescale_1);
	timer->timer->flags |= TIMER_RESOLUTION_full;
	setWaveformGenerationMode(timer->timer, pwm_phase_correct);
}

void initMotor_1Dir1Speed(PMotor1Dir1Speed motor) {
	setPinOutput(motor->direction);
	initMotorTimer(motor->pwmTimer);
	stopMotor((PMotor) motor);
}

void initMotor_2Dir(PMotor2Dir motor) {
	setPinOutput(motor->direction1);
	setPinOutput(motor->direction2);
	setPinZero(motor->direction1);
	setPinZero(motor->direction2);
	initMotorTimer(motor->pwmTimer);
	stopMotor((PMotor) motor);
}

void initMotor_2Speed(PMotor2Speed motor) {
	initMotorTimer(motor->pwmTimer1);
	initMotorTimer(motor->pwmTimer2);
	stopMotor((PMotor) motor);
}

#endif