/*
 * motor_smooth.h
 *
 * Created: 22.04.2012 17:29:22
 *  Author: Anton
 */

#ifndef MOTOR_SMOOTH_H_
#define MOTOR_SMOOTH_H_

#include "motor.h"
#include <kernel/mutex/mutex.h>

// This struct contains additional data enabling a smoother control
// over the motor speed.
typedef struct SmoothMotor {
	Motor motor; // Using pointer enables to also put Motor2DirPins here

	// Current state
	uint16_t currentSpeed;
	MotorDirection currentDirection;

	// Target state
	uint16_t targetSpeed;
	MotorDirection targetDirection;

	// Control data
	BOOL tickRunning;
	uint16_t adjustmentStep;
	Mutex mutex;
} SmoothMotor, *PSmoothMotor;

// See the according functions in motor.h for explanations.

void regulateStopMotor(PSmoothMotor motor);

void regulateSpeed(PSmoothMotor motor, uint16_t speed, MotorDirection direction);
void regulateSpeedForward(PSmoothMotor motor, uint16_t speed);
void regulateSpeedBackward(PSmoothMotor motor, uint16_t speed);

void regulateDirSpeed(PSmoothMotor motor, int16_t speed);

// Some external module must invoke this function on a regular basis. Whether or not this ticking
// is active, is steered through two function that must be implemented by the same external
// module (see motor_smooth.c)
void motor_smooth_tick(PSmoothMotor motor);

void initSmoothMotor(PSmoothMotor motor);

#define DEFINE_SMOOTH_MOTOR(motorName) extern const PSmoothMotor motorName;

#define INIT_SMOOTH_MOTOR(motorName, realMotor, adjustmentStep)	\
	motorName##_ = (SmoothMotor) { realMotor, 0, MotorForward, 0, MotorForward, FALSE, adjustmentStep, ConstantInvalid(Mutex) };		\
	initSmoothMotor(motorName);

#define DEFINE_SMOOTH_MOTOR_IMPL(motorName)				\
	SmoothMotor motorName##_;						\
	const PSmoothMotor motorName = &motorName##_;

#endif /* MOTOR_SMOOTH_H_ */
