/*
 * Created: 22.04.2012 17:29:22
 *  Author: Anton
 */

#ifndef MOTOR_SMOOTH_H_
#define MOTOR_SMOOTH_H_

#include "motor.h"

DEFINE_HANDLE(SmoothMotor);
DEFINE_HANDLE(UnderlyingMotor);
typedef void (*SetUnderlyingSpeed)(UnderlyingMotor motor, speed_t speed, MotorDirection direction);

SmoothMotor newSmoothMotor(UnderlyingMotor motor, SetUnderlyingSpeed speedSetter);
SmoothMotor newNormalSmoothMotor(Motor motor);
SmoothMotor destroySmoothMotor(SmoothMotor motor);
BOOL smoothMotorValid(SmoothMotor motor);

// Configure how much one invocation of motor_smooth_tick can change the speed.
void smoothMotorSetStep(SmoothMotor motor, uint16_t step);

void regulateStopMotor(SmoothMotor motor);
void forceStopMotor(SmoothMotor motor);

void regulateSpeed(SmoothMotor motor, speed_t speed, MotorDirection direction);
void regulateSpeedForward(SmoothMotor motor, speed_t speed);
void regulateSpeedBackward(SmoothMotor motor, speed_t speed);

void regulateDirSpeed(SmoothMotor motor, uspeed_t speed);

// Default for smoothMotorSetStep when creating new motors.
uint16_t smooth_motor_default_step;

// Some external module should invoke this function on a regular basis.
void motor_smooth_tick();

#endif /* MOTOR_SMOOTH_H_ */
