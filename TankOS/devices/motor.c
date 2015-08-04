/*
 * motor.c
 *
 * Created: 26.04.2012 17:24:51
 *  Author: Anton
 */

#include "motor.h"

static void setMotorValues(PMotor motor, uint16_t speed, MotorDirection direction) {
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
	if (motor->flags & MOTOR_INVERSE_DIRECTION) direction = !direction;
	motor->setter(motor, speed, direction);
}

void stopMotor(PMotor motor) {
	setMotorValues(motor, 0, MOTOR_STOPPED);
}

uint16_t convertSpeed(PMotor motor, uint16_t speed) {
	if (motor->flags & MOTOR_EXACT_CONVERSION) {
		double fraction = (double) (speed - motor->minValue) / (motor->maxValue - motor->minValue);
		speed = (uint16_t) (0xFFFF * fraction);
	}
	if (motor->flags & MOTOR_INVERSE_SPEED) speed = 0xFFFF - speed;
	return speed;
}

uint16_t getSpeed(PMotor motor) {
	uint16_t speed;
	MotorDirection dir;
	motor->getter(motor, &speed, &dir);
	return convertSpeed(motor, speed);
}

MotorDirection convertDirection(PMotor motor, MotorDirection dir) {
	if (dir == MOTOR_STOPPED) return dir;
	if (motor->flags & MOTOR_INVERSE_DIRECTION) return !dir;
	return dir;
}

MotorDirection getDirection(PMotor motor) {
	uint16_t speed;
	MotorDirection dir;
	motor->getter(motor, &speed, &dir);
	return convertDirection(motor, dir);
}

void setSpeed(PMotor motor, uint16_t speed, MotorDirection direction) {
	if (direction == MOTOR_STOPPED || speed == 0) {
		stopMotor(motor);
		return;
	}

	setMotorValues(motor, speed, direction);
	if (getSpeed(motor) == 0) {
		// Work around a timer-internal issue:
		// For 8-bit timers, the compare-value might end up being 0, although
		// the speed value here is not 0, because then just the high byte is used
		// as compare value. In other words, the 8-bit resolution is of course not
		// enough to represent all 16-bit values. This will happen for speed values < 256.

		stopMotor(motor);
	}
}

void setSpeedForward(PMotor motor, uint16_t speed) {
	setSpeed(motor, speed, FORWARD);
}

void setSpeedBackward(PMotor motor, uint16_t speed) {
	setSpeed(motor, speed, BACKWARD);
}

int16_t getDirSpeed(PMotor motor) {
	uint16_t speed;
	MotorDirection dir;
	motor->getter(motor, &speed, &dir);
	if (dir == MOTOR_STOPPED) return 0;
	dir = convertDirection(motor, dir);
	speed = convertSpeed(motor, speed);

	// This is symmetric to the shift in motor_toUnsignedSpeed.
	int16_t val = abs((int16_t) (speed >> 1));
	if (dir == BACKWARD)
		val *= -1; // Should be optimized away by compiler.
	return val;
}

uint16_t motor_toUnsignedSpeed(int16_t speed) {
	// Project the signed speed-value into the unsigned value range
	uint16_t absv = abs(speed);
	// This if-clause is just to avoid making the value smaller.
	// Should actually _always_ be true, since we convert a signed number.
	// This is symetric to the shift in getDirSpeed.
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

static void setMotorTimerCompareValue(PTimer timer, uint16_t speed, MotorDirection dir) {
	if (dir == MOTOR_STOPPED) speed = 0;
	if (speed == 0)
		disableOutputCompare(timer);
	else
		enableOutputCompare(timer);
	setTimerCompareValue(timer, speed);
}

void motor1Dir1Speed_setDirSpeed(PMotor _motor, uint16_t speed, MotorDirection dir) {
	PMotor1Dir1Speed motor = (PMotor1Dir1Speed) _motor;
	writePin(motor->direction, (BOOL) dir);
	setMotorTimerCompareValue(motor->pwmTimer, speed, dir);
}

void motor1Dir1Speed_getDirSpeed(PMotor _motor, uint16_t *speed, MotorDirection *dir) {
	PMotor1Dir1Speed motor = (PMotor1Dir1Speed) _motor;
	*speed = getTimerCompareValue(motor->pwmTimer);
	if (*speed == 0)
		*dir = MOTOR_STOPPED;
	else
		*dir = (MotorDirection) readPin(motor->direction);
}

void motor2Dir_setDirSpeed(PMotor _motor, uint16_t speed, MotorDirection direction) {
	PMotor2Dir motor = (PMotor2Dir) _motor;
	if (speed == 0 || direction == MOTOR_STOPPED) {
		setPinZero(motor->direction1);
		setPinZero(motor->direction2);
	} else if (direction == FORWARD) {
		setPinOne(motor->direction1);
		setPinZero(motor->direction2);
	} else {
		setPinZero(motor->direction1);
		setPinOne(motor->direction2);
	}
	setMotorTimerCompareValue(motor->pwmTimer, speed, direction);
}

void motor2Dir_getDirSpeed(PMotor _motor, uint16_t *speed, MotorDirection *dir) {
	PMotor2Dir motor = (PMotor2Dir) _motor;
	BOOL dir1 = readPin(motor->direction1);
	BOOL dir2 = readPin(motor->direction2);
	if (dir1 && !dir2) *dir = FORWARD;
	else if (!dir1 && dir2) *dir = BACKWARD;
	else *dir = MOTOR_STOPPED;
	if (*dir == MOTOR_STOPPED)
		*speed = 0;
	else
		*speed = getTimerCompareValue(motor->pwmTimer);
}

void motor2Speed_setDirSpeed(PMotor _motor, uint16_t speed, MotorDirection dir) {
	PMotor2Speed motor = (PMotor2Speed) _motor;
	if (dir == MOTOR_STOPPED || speed == 0) {
		setMotorTimerCompareValue(motor->pwmTimer1, 0, dir);
		setMotorTimerCompareValue(motor->pwmTimer2, 0, dir);
	} else if (dir == FORWARD) {
		setMotorTimerCompareValue(motor->pwmTimer1, speed, dir);
		setMotorTimerCompareValue(motor->pwmTimer2, 0, MOTOR_STOPPED);
	} else {
		setMotorTimerCompareValue(motor->pwmTimer2, speed, dir);
		setMotorTimerCompareValue(motor->pwmTimer1, 0, MOTOR_STOPPED);
	}
	// TOOD uncovered: both pwm-timers set to != 0 -> will hold motor!
}

void motor2Speed_getDirSpeed(PMotor _motor, uint16_t *speed, MotorDirection *dir) {
	PMotor2Speed motor = (PMotor2Speed) _motor;
	uint16_t speed1 = getTimerCompareValue(motor->pwmTimer1);
	uint16_t speed2 = getTimerCompareValue(motor->pwmTimer2);
	if (speed1 > 0) {
		if (speed2 == 0) {
			*dir = FORWARD;
			*speed = speed1;
			return;
		}
	} else if (speed2 > 0) {
		*dir = BACKWARD;
		*speed = speed2;
		return;
	}
	*dir = MOTOR_STOPPED;
	*speed = 0;
	// TODO uncovered: both motors set to != 0.
}

static void initMotorTimer(PTimer timer) {
	// Configure the timer. These are configurations,
	// that should work fine for most motors, but might also
	// be changed elsewhere.
	setTimerClockSelect(timer->timer, prescale_1);
	timer->timer->flags |= TIMER_RESOLUTION_full;
	setWaveformGenerationMode(timer->timer, pwm_phase_correct);
	setPinOutput(timer->outputComparePin);
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
