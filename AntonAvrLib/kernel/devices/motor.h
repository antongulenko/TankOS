/*
 * motor.h
 *
 * Created: 22.04.2012 17:29:22
 *  Author: Anton
 */ 

#ifndef MOTOR_H_
#define MOTOR_H_

#include "../../anton_std.h"
#include "timer.h"

#define MOTOR_NORMAL 0
#define MOTOR_INVERSE_SPEED (1 << 1) // => 'high voltage' pwm signal means slow motor rotation
#define MOTOR_INVERSE_DIRECTION (1 << 2) // => motor rotating forward, if direction-pin set to 0
#define MOTOR_TWO_DIR_PINS (1 << 3) // The motor-structure is actually of type Motor2Pins, defines second pin for direction.
									// Pins equal -> motor halts; First pin 1 -> forward (except for MOTOR_INVERSE_DIR..)

typedef struct {
	uint8_t flags; // MOTOR_* defines above
	PPin direction;
	PTimer pwmTimer;
} Motor, *PMotor;

typedef struct {
	Motor motor; // Support casting the whole structure
	PPin direction2;
} Motor2Pins, *PMotor2Pins;

typedef enum {
	BACKWARD = 0, // It's important that this is zero.
	FORWARD = 1,
	MOTOR_STOPPED = 2
} MotorDirection;

// Sets the speed to zero and fully disables the pwm. Called if setSpeed() or so is called with 0.
void stopMotor(PMotor motor);

// These function operate with full 16 bit for the speed-value.
// If actually a 8-bit timer is used, the get/set functions behave like setTimerCompareValue/getTimerCompareValue in timer.h.
uint16_t getSpeed(PMotor motor);
MotorDirection getDirection(PMotor motor);
void setSpeed(PMotor motor, uint16_t speed, MotorDirection direction);
void setSpeedForward(PMotor motor, uint16_t speed);
void setSpeedBackward(PMotor motor, uint16_t speed);

// These functions operate with a signed value for the speed-value (negative means backwards).
// Therefore, only ~15 bit are available for the speed-value.
// When setting, the absolute value of the parameter will be used.
// When getting, the absolute value will be shifted right once and multiplied with -1 if driving backwards
//				(also ignoring the least significant bit).
// This happens before the 8/16 bit conversion; these functions behave the same like the above in this regard.
int16_t getDirSpeed(PMotor motor);
void setDirSpeed(PMotor motor, int16_t speed);

#ifdef _KERNEL_
#	define DEFINE_MOTOR(motorName)	\
		Motor motorName##_;			\
		const PMotor motorName = &motorName##_;
#	define INIT_MOTOR(motorName, flags, directionPin, pwmTimer)		\
		motorName##_ = (Motor) { flags, directionPin, pwmTimer };	\
		initMotor(motorName);
#	define DEFINE_2DirPins_MOTOR(motorName)		\
		Motor2Pins motorName##_;				\
		const PMotor motorName = (PMotor) &motorName##_;
#	define INIT_2DirPins_MOTOR(motorName, flags, directionPin, pwmTimer, directionPin2)								\
		motorName##_ = (Motor2Pins) { { flags | MOTOR_TWO_DIR_PINS, directionPin, pwmTimer }, directionPin2 };	\
		initMotor2Pins(&motorName##_);
#else
#	define DEFINE_MOTOR(motorName)	\
		extern const PMotor motorName;
#	define DEFINE_2DirPins_MOTOR(motorName)	\
		extern const PMotor motorName;
#endif

#endif /* MOTOR_H_ */