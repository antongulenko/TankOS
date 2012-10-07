/*
 * motor.c
 *
 * Created: 26.04.2012 17:24:51
 *  Author: Anton
 */ 

#include "motor.h"
#include "timer.h"

#define Dir2(motor) (((PMotor2Pins) motor)->direction2)

static void setMotorCompareValue(PMotor motor, uint16_t speed) {
	if (motor->flags & MOTOR_INVERSE_SPEED) speed = 0xFFFF - speed;
	if (motor->flags & MOTOR_EXACT_CONVERSION) {
		double fraction = (double) speed / 0xFFFF;
		double val = (motor->maxValue - motor->minValue) * fraction;
		speed = motor->minValue + (uint16_t) val;
	} else {
		if (speed < motor->minValue) {
			speed = motor->minValue;
		}
		if (speed > motor->maxValue) {
			speed = motor->maxValue;
		}
	}
	setTimerCompareValue(motor->pwmTimer, speed);
}

void stopMotor(PMotor motor) {
	if (motor->flags & MOTOR_TWO_DIR_PINS) {
		// Also set direction-pins to zero.
		setPinZero(motor->direction);
		setPinZero(Dir2(motor));
	} else {
		disableOutputCompare(motor->pwmTimer);
		setMotorCompareValue(motor, 0);
	}
}

uint16_t getSpeed(PMotor motor) {
	return getTimerCompareValue(motor->pwmTimer);
}

MotorDirection getDirection(PMotor motor) {
	MotorDirection val;
	if (motor->flags & MOTOR_TWO_DIR_PINS) {
		BOOL dir1 = readPin(motor->direction);
		BOOL dir2 = readPin(Dir2(motor));
		if (dir1 && !dir2) val = FORWARD;
		else if (!dir1 && dir2) val = BACKWARD;
		else val = MOTOR_STOPPED;
	} else {
		val = readPin(motor->direction);
	}
	if (val != MOTOR_STOPPED && (motor->flags & MOTOR_INVERSE_DIRECTION)) val = !val;
	return val;
}

void setSpeed(PMotor motor, uint16_t speed, MotorDirection direction) {
	if (direction == MOTOR_STOPPED || speed == 0) {
		stopMotor(motor);
		return;
	}
	if (motor->flags & MOTOR_INVERSE_DIRECTION) direction = !direction;
	// TODO -- this is quite an overhead to do on each speed-change...
	// maybe memorize some motor-state internally.
	if (motor->flags & MOTOR_TWO_DIR_PINS) {
		if (direction == FORWARD) {
			setPinOne(motor->direction);
			setPinZero(Dir2(motor));
		} else {
			setPinZero(motor->direction);
			setPinOne(Dir2(motor));
		}
	} else {
		writePin(motor->direction, (BOOL) direction);
	}
	setMotorCompareValue(motor, speed);
	enableOutputCompare(motor->pwmTimer);
}

void setSpeedForward(PMotor motor, uint16_t speed) {
	setSpeed(motor, speed, FORWARD);
}

void setSpeedBackward(PMotor motor, uint16_t speed) {
	setSpeed(motor, speed, BACKWARD);
}

int16_t getDirSpeed(PMotor motor) {
	MotorDirection dir = getDirection(motor);
	if (dir == MOTOR_STOPPED) return 0;
	int16_t val = abs((int16_t) (getSpeed(motor) >> 1));
	if (dir == BACKWARD)
		val *= -1; // Should be optimized away by compiler.
	return val;
}

uint16_t motor_toUnsignedSpeed(int16_t speed) {
	uint16_t absv = abs(speed);
	// This if-clause is just to avoid making the value smaller.
	if (!(absv & (1 << 15))) absv = absv << 1;
	return absv;
}

void setDirSpeed(PMotor motor, int16_t speed) {
	if (speed == 0) {
		stopMotor(motor);
		return;
	}
	setSpeed(motor, motor_toUnsignedSpeed(speed), speed < 0 ? BACKWARD : FORWARD);
}
