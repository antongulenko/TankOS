/*
 * motor.c
 *
 * Created: 26.04.2012 17:24:51
 *  Author: Anton
 */

#include "motor.h"

typedef struct {
    MotorType type;

    // These timers/pins can point to the same entity twice.
    Timer forwardTimer;
    Timer backwardTimer;

    // The pins are optional. If both are present, only one will be set at a time.
    // If only forwardPin is present, it will be set high for forward-movement.
    // If both are missing, only the timers control the movement.
    Pin forwardPin;
    Pin backwardPin;

	// These 2 values bind possible timer-compare-values into an interval.
	// They are applied, AFTER MotorInverseSpeed was applied, so they
	// reflect the real min/max voltage level.
	uint16_t minValue;
	uint16_t maxValue;
} _Motor;

#define MOTOR Get(_Motor, motor)

static Motor newMotorImpl(MotorType type, Timer forwardTimer, Timer backwardTimer, Pin forwardPin, Pin backwardPin) {
    if (!isPwmTimer(forwardTimer) || !isPwmTimer(backwardTimer))
        return Invalid(Motor);

    _Motor *motor = malloc(sizeof(_Motor));
    if (!motor) return Invalid(Motor);
    if (IsValid(forwardPin)) {
        PinConfigTag tag1 = pinOccupation(forwardPin);
        BOOL occupied1 = FALSE;
        if (tag1 != PinGPIO) {
            if (!occupyPin(forwardPin, PinGPIO)) {
                free(motor);
                return Invalid(Motor);
            }
            occupied1 = TRUE;
            setPinOutput(forwardPin);
        }
        if (IsValid(backwardPin)) {
            PinConfigTag tag2 = pinOccupation(backwardPin);
            if (tag2 != PinGPIO) {
                if (!occupyPin(forwardPin, PinGPIO)) {
                    if (occupied1) deOccupyPin(forwardPin, PinGPIO);
                    free(motor);
                    return Invalid(Motor);
                }
            }
            setPinOutput(backwardPin);
        }
    }
    motor->forwardTimer = forwardTimer;
    motor->backwardTimer = backwardTimer;
    motor->forwardPin = forwardPin;
    motor->backwardPin = backwardPin;
    motor->type = type;
    motor->minValue = 0;
    motor->maxValue = 0xFFFF;

    stopMotor(As(Motor, motor));
    return As(Motor, motor);
}

Motor newMotor(MotorType type, Timer speedTimer, Pin directionPin) {
    return newMotorImpl(type, speedTimer, speedTimer, directionPin, Invalid(Pin));
}

Motor newMotor2speed(MotorType type, Timer forwardTimer, Timer backwardTimer) {
    return newMotorImpl(type, forwardTimer, backwardTimer, Invalid(Pin), Invalid(Pin));
}

Motor newMotor2dir(MotorType type, Timer speedTimer, Pin forwardPin, Pin backwardPin) {
    return newMotorImpl(type, speedTimer, speedTimer, forwardPin, backwardPin);
}

Motor destroyMotor(Motor motor) {
    if (pinOccupation(MOTOR->forwardPin) == PinGPIO)
        deOccupyPin(MOTOR->forwardPin, PinGPIO);
    if (pinOccupation(MOTOR->backwardPin) == PinGPIO)
        deOccupyPin(MOTOR->backwardPin, PinGPIO);
    if (IsValid(motor)) {
        free(MOTOR);
    }
    return Invalid(Motor);
}

BOOL motorValid(Motor motor) {
    if (!IsValid(motor)) return FALSE;
    if (pinOccupation(MOTOR->forwardPin) != PinGPIO) return FALSE;
    if (pinOccupation(MOTOR->backwardPin) != PinGPIO) return FALSE;
    if (!isPwmTimer(MOTOR->forwardTimer)) return FALSE;
    if (!isPwmTimer(MOTOR->backwardTimer)) return FALSE;
    return TRUE;
}

void setMotorValueBounds(Motor motor, uint16_t minValue, uint16_t maxValue) {
    MOTOR->minValue = minValue;
    MOTOR->maxValue = maxValue;
}

static void setMotorValues(_Motor *motor, uint16_t speed, MotorDirection direction) {
	if (motor->type & MotorInverseSpeed) speed = 0xFFFF - speed;
	if (motor->type & MotorExactConversion) {
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
	if (motor->type & MotorInverseDirection) direction = !direction;

    // Now set the direction pins
    if (IsValid(motor->forwardPin)) {
        if (!IsValid(motor->backwardPin))
            writePin(motor->forwardPin, direction);
        else
            writePin(motor->forwardPin, direction == MotorForward);
    }
    if (IsValid(motor->backwardPin))
        writePin(motor->backwardPin, direction == MotorBackward);

    // Now set the timer value
    if (Equal(motor->forwardTimer, motor->backwardTimer)) {
        setTimerValue(motor->forwardTimer, speed);
    } else {
        uint16_t zero = (motor->type & MotorInverseSpeed) ? 0xFFFF : 0;
        setTimerValue(motor->forwardTimer, direction == MotorForward ? speed : zero);
        setTimerValue(motor->forwardTimer, direction == MotorForward ? speed : zero);
    }
}

void stopMotor(Motor motor) {
	setMotorValues(MOTOR, 0, MotorStopped);
}

static uint16_t convertSpeed(_Motor *motor, uint16_t speed) {
	if (motor->type & MotorExactConversion) {
		double fraction = (double) (speed - motor->minValue) / (motor->maxValue - motor->minValue);
		speed = (uint16_t) (0xFFFF * fraction);
	}
	if (motor->type & MotorInverseSpeed) speed = 0xFFFF - speed;
	return speed;
}

uint16_t getSpeed(Motor motor) {
	uint16_t speed = 0;
    if (Equal(MOTOR->forwardTimer, MOTOR->backwardTimer)) {
        speed = getTimerValue(MOTOR->forwardTimer);
    } else {
        MotorDirection dir = getDirection(motor);
        switch (dir) {
            case MotorStopped: return 0;
            case MotorForward:
                speed = getTimerValue(MOTOR->forwardTimer);
                break;
            case MotorBackward:
                speed = getTimerValue(MOTOR->backwardTimer);
                break;
        }
    }
	return convertSpeed(MOTOR, speed);
}

static MotorDirection convertDirection(_Motor *motor, MotorDirection dir) {
	if (dir == MotorStopped) return dir;
	if (motor->type & MotorInverseDirection) return !dir;
	return dir;
}

MotorDirection getDirection(Motor motor) {
	MotorDirection dir;
    if (IsValid(MOTOR->forwardPin)) {
        BOOL forward = readPin(MOTOR->forwardPin);
        if (IsValid(MOTOR->backwardPin)) {
            BOOL backward = readPin(MOTOR->forwardPin);
            if (forward == backward) return MotorStopped;
        }
        return forward ? MotorForward : MotorBackward;
    } else {
        uint16_t speed1 = getTimerValue(MOTOR->forwardTimer);
        uint16_t speed2 = getTimerValue(MOTOR->backwardTimer);
     	if (speed1 > 0 && speed2 == 0)
            return MotorForward;
        if (speed2 > 0 && speed1 == 0)
            return MotorBackward;
        return MotorStopped;
    }
    return convertDirection(MOTOR, dir);
}

void setSpeed(Motor motor, uint16_t speed, MotorDirection direction) {
	if (direction == MotorStopped || speed == 0) {
		direction = MotorStopped;
        speed = 0;
	}
	setMotorValues(MOTOR, speed, direction);
	if (getSpeed(motor) == 0) {
		// Work around a timer-internal issue:
		// For 8-bit timers, the compare-value might end up being 0, although
		// the speed value here is not 0, because then just the high byte is used
		// as compare value. In other words, the 8-bit resolution is of course not
		// enough to represent all 16-bit values. This will happen for speed values < 256.

		stopMotor(motor);
	}
}

void setSpeedForward(Motor motor, uint16_t speed) {
	setSpeed(motor, speed, MotorForward);
}

void setSpeedBackward(Motor motor, uint16_t speed) {
	setSpeed(motor, speed, MotorBackward);
}

int16_t getDirSpeed(Motor motor) {
	MotorDirection dir = getDirection(motor);
	if (dir == MotorStopped) return 0;
    uint16_t speed = getSpeed(motor);

	// This is symmetric to the shift in motor_toUnsignedSpeed.
	int16_t val = abs((int16_t) (speed >> 1));
	if (dir == MotorBackward)
		val *= -1; // Should be optimized away by compiler.
	return val;
}

static uint16_t motor_toUnsignedSpeed(int16_t speed) {
	// Project the signed speed-value into the unsigned value range
	uint16_t absv = abs(speed);
	// This if-clause is just to avoid making the value smaller.
	// Should actually _always_ be true, since we convert a signed number.
	// This is symetric to the shift in getDirSpeed.
	if (!(absv & (1 << 15))) absv = absv << 1;
	return absv;
}

void setDirSpeed(Motor motor, int16_t speed) {
	if (speed == 0) {
		stopMotor(motor);
		return;
	}
	setSpeed(motor, motor_toUnsignedSpeed(speed), speed < 0 ? MotorBackward : MotorForward);
}
