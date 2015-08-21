/*
 * Created: 22.04.2012 17:29:22
 *  Author: Anton
 */

#ifndef MOTOR_SMOOTH_H_
#define MOTOR_SMOOTH_H_

#include "motor.h"
#include <mutex/mutex.h>

DEFINE_HANDLE(SmoothMotor);

SmoothMotor newSmoothMotor(Motor motor);
SmoothMotor destroySmoothMotor(SmoothMotor motor);
BOOL smoothMotorValid(SmoothMotor motor);

// Configured how much one invocation of motor_smooth_tick change can the speed.
void setAdjustmentStep(uint16_t step);

void regulateStopMotor(SmoothMotor motor);

void regulateSpeed(SmoothMotor motor, uint16_t speed, MotorDirection direction);
void regulateSpeedForward(SmoothMotor motor, uint16_t speed);
void regulateSpeedBackward(SmoothMotor motor, uint16_t speed);

void regulateDirSpeed(SmoothMotor motor, int16_t speed);

// Some external module should invoke this function on a regular basis.
void motor_smooth_tick();

#endif /* MOTOR_SMOOTH_H_ */
