/*
 * motor.h
 *
 * Created: 22.04.2012 17:29:22
 *  Author: Anton
 */

#ifndef MOTOR_H_
#define MOTOR_H_

#include <tank_os_common.h>
#include <kernel/devices/timer.h>

typedef enum {
    MotorNormal = 0,
    MotorInverseSpeed = _BV(1),
    MotorInverseDirection = _BV(2),
    MotorExactConversion = _BV(3),
} MotorType;

typedef enum {
	MotorBackward = 0,
	MotorForward = 1,
	MotorStopped = 2
} MotorDirection;

DEFINE_HANDLE(Motor);
#define PinMotorDirection 7

Motor newMotor(MotorType type, Timer speedTimer, Pin directionPin);
Motor newMotor2speed(MotorType type, Timer forwardTimer, Timer backwardTimer);
Motor newMotor2dir(MotorType type, Timer speedTimer, Pin forwardPin, Pin backwardPin);
Motor destroyMotor(Motor motor);
BOOL motorValid(Motor motor);

void setMotorValueBounds(Motor motor, uint16_t minValue, uint16_t maxValue);

void stopMotor(Motor motor);

// These functions operate with full 16 bit for the speed-value.
// The timer module is responsible for converting these values in case of 8-bit timers.
uint16_t getSpeed(Motor motor);
MotorDirection getDirection(Motor motor);
void setSpeed(Motor motor, uint16_t speed, MotorDirection direction);
void setSpeedForward(Motor motor, uint16_t speed);
void setSpeedBackward(Motor motor, uint16_t speed);

// These functions operate with a signed value for the speed-value (negative means backwards).
// Therefore, only ~15 bit are available for the speed-value.
// When setting, the absolute value of the parameter will be used, left-shifted once.
// When getting, the absolute value will be shifted right once and multiplied with -1 if driving backwards
//				(also ignoring the least significant bit).
// This happens before the possible 8/16 bit conversion.
int16_t getDirSpeed(Motor motor);
void setDirSpeed(Motor motor, int16_t speed);

#endif /* MOTOR_H_ */
