/*
 * motor.h
 *
 * Created: 22.04.2012 17:29:22
 *  Author: Anton
 */ 

#ifndef MOTOR_H_
#define MOTOR_H_

#include <tank_os_common.h>
#include "timer.h"

#define MOTOR_NORMAL 0
#define MOTOR_INVERSE_SPEED (1 << 1) // => 'high voltage' pwm signal means slow motor rotation
#define MOTOR_INVERSE_DIRECTION (1 << 2) // => motor rotating forward, if direction-pin set to 0
#define MOTOR_EXACT_CONVERSION (1 << 4) // => if minValue/maxValue is defined, this leads to an exact conversion from the 
										// set speed into the min-max interval. Else, the values are simply 'cropped'.

typedef enum {
	BACKWARD = 0, // It's important that this is zero.
	FORWARD = 1,
	MOTOR_STOPPED = 2
} MotorDirection;

typedef struct _Motor {
	uint8_t flags; // MOTOR_* defines above
	void (*setter)(struct _Motor *motor, uint16_t speed, MotorDirection dir);
	void (*getter)(struct _Motor *motor, uint16_t *speed, MotorDirection *dir);
	
	// These 2 values bind possible timer-compare-values into an interval.
	// They are applied, AFTER MOTOR_INVERSE_SPEED was applied, so they
	// reflect the real min/max voltage level.
	uint16_t minValue;
	uint16_t maxValue;
} Motor, *PMotor;


// Here come the data for the different types of motors.
// The different lies in the number of pins/pwm-signals for speed/directions.
// The functions defined here are only internal implementation details and
// defined here to support the makros at the end of this header.

typedef struct {
	Motor base;
	PPin direction;
	PTimer pwmTimer;
} Motor1Dir1Speed, *PMotor1Dir1Speed;

void motor1Dir1Speed_setDirSpeed(PMotor motor, uint16_t speed, MotorDirection dir);
void motor1Dir1Speed_getDirSpeed(PMotor motor, uint16_t *speed, MotorDirection *dir);

typedef struct {
	Motor base;
	PTimer pwmTimer1;
	PTimer pwmTimer2;
} Motor2Speed, *PMotor2Speed;

void motor2Dir_setDirSpeed(PMotor motor, uint16_t speed, MotorDirection dir);
void motor2Dir_getDirSpeed(PMotor motor, uint16_t *speed, MotorDirection *dir);

typedef struct {
	Motor base;
	PPin direction1;
	PPin direction2;
	PTimer pwmTimer;
} Motor2Dir, *PMotor2Dir;

void motor2Speed_setDirSpeed(PMotor motor, uint16_t speed, MotorDirection dir);
void motor2Speed_getDirSpeed(PMotor motor, uint16_t *speed, MotorDirection *dir);

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

void initMotor_1Dir1Speed(PMotor1Dir1Speed motor);
void initMotor_2Dir(PMotor2Dir motor);
void initMotor_2Speed(PMotor2Speed motor);

#define DEFINE_MOTOR(motorName) extern const PMotor motorName;

#define INIT_MOTOR_1Dir1Speed(motorName, flags, directionPin, pwmTimer)		\
		motorName##_ = (Motor1Dir1Speed) { { flags, motor1Dir1Speed_setDirSpeed, motor1Dir1Speed_getDirSpeed, 0, 0xFFFF}, directionPin, pwmTimer };	\
		initMotor_1Dir1Speed(motorName);
#define INIT_MOTOR_2Dir(motorName, flags, directionPin, pwmTimer, directionPin2)									\
		motorName##_ = (Motor2Dir) { { flags, motor2Dir_setDirSpeed, motor2Dir_getDirSpeed, 0, 0xFFFF}, directionPin1, directionPin2, pwmTimer };	\
		initMotor_2Dir(&motorName##_);
#define INIT_MOTOR_2Speed(motorName, flags, pwmTimer1, pwmTimer2)								\
		motorName##_ = (Motor2Speed) { { flags, motor2Speed_setDirSpeed, motor2Speed_getDirSpeed, 0, 0xFFFF}, pwmTimer1, pwmTimer2 };	\
		initMotor_2Speed(&motorName##_);

#define DEFINE_MOTOR_1Dir1Speed_IMPL(motorName)		\
	Motor1Dir1Speed motorName##_;			\
	const PMotor motorName = &motorName##_;
#define DEFINE_MOTOR_2Dir_IMPL(motorName)		\
	Motor2Dir motorName##_;				\
	const PMotor motorName = (PMotor) &motorName##_;
#define DEFINE_MOTOR_2Speed_IMPL(motorName)		\
	Motor2Speed motorName##_;			\
	const PMotor motorName = (PMotor) &motorName##_;

#endif /* MOTOR_H_ */