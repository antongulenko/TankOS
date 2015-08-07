/*
 * motor.c
 *
 * Created: 26.04.2012 17:24:51
 *  Author: Anton
 */

#include "motor.h"

typedef struct _Motor {
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
    if (!isPwmTimer(forwardTimer)) return Invalid(Motor);
    if (IsValid(backwardTimer) && !isPwmTimer(backwardTimer)) return Invalid(Motor);
    _Motor *motor = malloc(sizeof(_Motor));
    if (!motor) return Invalid(Motor);
    if (IsValid(forwardPin)) {
        if (!occupyPinDirectly(forwardPin, PinMotorDirection, EmptyConfigData)) {
            free(motor);
            return Invalid(Motor);
        }
        setPinOutput(forwardPin);
        if (IsValid(backwardPin)) {
            if (!occupyPinDirectly(backwardPin, PinMotorDirection, EmptyConfigData)) {
                deOccupyPin(forwardPin, PinMotorDirection);
                free(motor);
                return Invalid(Motor);
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
    return newMotorImpl(type, speedTimer, Invalid(Timer), directionPin, Invalid(Pin));
}

Motor newMotor2speed(MotorType type, Timer forwardTimer, Timer backwardTimer) {
    return newMotorImpl(type, forwardTimer, backwardTimer, Invalid(Pin), Invalid(Pin));
}

Motor newMotor2dir(MotorType type, Timer speedTimer, Pin forwardPin, Pin backwardPin) {
    return newMotorImpl(type, speedTimer, Invalid(Timer), forwardPin, backwardPin);
}

Motor destroyMotor(Motor motor) {
    if (IsValid(motor)) {
        if (IsValid(MOTOR->forwardPin))
            if (pinOccupation(MOTOR->forwardPin) == PinMotorDirection)
                deOccupyPin(MOTOR->forwardPin, PinMotorDirection);
        if (IsValid(MOTOR->backwardPin))
            if (pinOccupation(MOTOR->backwardPin) == PinMotorDirection)
                deOccupyPin(MOTOR->backwardPin, PinMotorDirection);
        free(MOTOR);
    }
    return Invalid(Motor);
}

BOOL motorValid(Motor motor) {
    if (!IsValid(motor)) return FALSE;
    if (IsValid(MOTOR->forwardPin))
        if (pinOccupation(MOTOR->forwardPin) != PinMotorDirection) return FALSE;
    if (IsValid(MOTOR->backwardPin))
        if (pinOccupation(MOTOR->backwardPin) != PinMotorDirection) return FALSE;
    if (!IsValid(MOTOR->forwardTimer)) return FALSE;
    if (!isPwmTimer(MOTOR->forwardTimer)) return FALSE;
    if (IsValid(MOTOR->backwardTimer))
        if (!isPwmTimer(MOTOR->backwardTimer)) return FALSE;
    return TRUE;
}

void setMotorValueBounds(Motor motor, uint16_t minValue, uint16_t maxValue) {
    if (!IsValid(motor)) return;
    if (maxValue < minValue) return;
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
    if (IsValid(motor->forwardPin))
        writePin(motor->forwardPin, direction == MotorForward);
    if (IsValid(motor->backwardPin))
        writePin(motor->backwardPin, direction == MotorBackward);

    // Now set the timer value
    if (!IsValid(motor->backwardTimer)) {
        setTimerValue(motor->forwardTimer, speed);
    } else {
        uint16_t zero = (motor->type & MotorInverseSpeed) ? 0xFFFF : 0;
        setTimerValue(motor->forwardTimer, direction == MotorForward ? speed : zero);
        setTimerValue(motor->backwardTimer, direction == MotorBackward ? speed : zero);
    }
}

void stopMotor(Motor motor) {
    if (!IsValid(motor)) return;
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
    if (!IsValid(motor)) return 0;
	uint16_t speed = 0;
    if (!IsValid(MOTOR->backwardTimer)) {
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
    if (!IsValid(motor)) return MotorStopped;
	MotorDirection dir;
    if (IsValid(MOTOR->forwardPin)) {
        uint16_t speed = getTimerValue(MOTOR->forwardTimer);
        if (speed == 0) return MotorStopped;
        BOOL forward = isPinOutputHigh(MOTOR->forwardPin);
        if (IsValid(MOTOR->backwardPin)) {
            BOOL backward = isPinOutputHigh(MOTOR->backwardPin);
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
    if (!IsValid(motor)) return;
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
    if (!IsValid(motor)) return 0;
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
    if (!IsValid(motor)) return;
	if (speed == 0) {
		stopMotor(motor);
		return;
	}
	setSpeed(motor, motor_toUnsignedSpeed(speed), speed < 0 ? MotorBackward : MotorForward);
}
