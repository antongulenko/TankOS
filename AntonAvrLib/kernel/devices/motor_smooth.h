/*
 * motor_smooth.h
 *
 * Created: 22.04.2012 17:29:22
 *  Author: Anton
 */ 

#ifndef MOTOR_SMOOTH_H_
#define MOTOR_SMOOTH_H_

#include "motor.h"
#include "../processes/mutex/mutex.h"

// This struct contains additional data enabling a smoother control
// over the motor speed.
typedef struct {
	PMotor motor; // Using pointer enables to also put PMotor2DirPins here
	
	// Current state
	uint16_t currentSpeed;
	MotorDirection currentDirection;
	
	// Target state
	uint16_t targetSpeed;
	MotorDirection targetDirection;
	
	// Control data
	BOOL tickRunning;
	uint16_t adjustmentFrequency;
	uint16_t adjustmentStep;
	Mutex mutex;
} SmoothMotor, *PSmoothMotor;

// See the according functions in motor.h for explanations.

void regulateStopMotor(PSmoothMotor motor);

void regulateSpeed(PSmoothMotor motor, uint16_t speed, MotorDirection direction);
void regulateSpeedForward(PSmoothMotor motor, uint16_t speed);
void regulateSpeedBackward(PSmoothMotor motor, uint16_t speed);

void regulateDirSpeed(PSmoothMotor motor, int16_t speed);

#ifdef _KERNEL_
	#define DEFINE_SMOOTH_MOTOR(motorName)				\
		SmoothMotor motorName##_;						\
		const PSmoothMotor motorName = &motorName##_;
	#define INIT_SMOOTH_MOTOR(motorName, realMotor, adjustmentFreq, adjustmentStep)	\
		motorName##_ = (SmoothMotor) { realMotor, 0, FORWARD, 0, FORWARD, FALSE, adjustmentFreq, adjustmentStep, 0 };		\
		initSmoothMotor(motorName);
#else
	#define DEFINE_SMOOTH_MOTOR(motorName)	\
		extern PSmoothMotor motorName;
#endif

#endif /* MOTOR_SMOOTH_H_ */