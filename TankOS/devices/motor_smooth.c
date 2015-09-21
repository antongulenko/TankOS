/*
 * motor_smooth.c
 *
 * Created: 26.04.2012 17:24:51
 *  Author: Anton
 */

#include "motor_smooth.h"
#include <uthash/utlist.h>
#include <kernel/klib.h>

static volatile uint16_t __adjustment_step = 1;
uint16_t smooth_motor_default_step = 1;

typedef struct _SmoothMotor {
	UnderlyingMotor motor;
    SetUnderlyingSpeed speedSetter;
    struct _SmoothMotor *next;
    uint16_t adjustment_step;

	// Current state
	uint16_t currentSpeed;
	MotorDirection currentDirection;

	// Target state
	uint16_t targetSpeed;
	MotorDirection targetDirection;
} *_SmoothMotor;

static _SmoothMotor motors;

#define MOTOR Get(struct _SmoothMotor, motor)

SmoothMotor newSmoothMotor(UnderlyingMotor _motor, SetUnderlyingSpeed speedSetter) {
    if (!IsValid(_motor)) return Invalid(SmoothMotor);
    _SmoothMotor motor = kalloc(sizeof(struct _SmoothMotor));
    if (!motor) return Invalid(SmoothMotor);

    motor->motor = _motor;
    motor->currentSpeed = 0;
    motor->currentDirection = MotorStopped;
    motor->targetSpeed = motor->currentSpeed;
    motor->targetDirection = motor->currentDirection;
    motor->speedSetter = speedSetter;
    motor->next = NULL;
    motor->adjustment_step = smooth_motor_default_step;
    LL_APPEND(motors, motor);
    return As(SmoothMotor, motor);
}

static void normalMotorSetSpeed(UnderlyingMotor motor, uint16_t speed, MotorDirection direction) {
    setSpeed(Cast(Motor, motor), speed, direction);
}

SmoothMotor newNormalSmoothMotor(Motor motor) {
    if (!motorValid(motor)) return Invalid(SmoothMotor);
    return newSmoothMotor(Cast(UnderlyingMotor, motor), normalMotorSetSpeed);
}

SmoothMotor destroySmoothMotor(SmoothMotor motor) {
    if (IsValid(motor)) {
        LL_DELETE(motors, MOTOR);
        free(MOTOR);
    }
    return Invalid(SmoothMotor);
}

BOOL smoothMotorValid(SmoothMotor motor) {
    if (!IsValid(motor)) return FALSE;
    if (!IsValid(MOTOR->motor)) return FALSE;
    if (MOTOR->speedSetter == NULL) return FALSE;
    return TRUE;
}

void smoothMotorSetStep(SmoothMotor motor, uint16_t step) {
    MOTOR->adjustment_step = step;
}

uint16_t motor_toUnsignedSpeed(int16_t speed); // motor.c

void regulateStopMotor(SmoothMotor motor) {
    if (!IsValid(motor)) return;
	regulateSpeed(motor, 0, MotorStopped);
}

void forceStopMotor(SmoothMotor motor) {
    if (!IsValid(motor)) return;
    MOTOR->targetSpeed = 0;
	MOTOR->currentSpeed = 0;
    MOTOR->targetDirection = MotorStopped;
    MOTOR->currentDirection = MotorStopped;
    MOTOR->speedSetter(MOTOR->motor, 0, MotorStopped);
}

void regulateSpeed(SmoothMotor motor, uint16_t speed, MotorDirection direction) {
    if (!IsValid(motor)) return;
	MOTOR->targetSpeed = speed;
	MOTOR->targetDirection = direction;
}

void regulateSpeedForward(SmoothMotor motor, uint16_t speed) {
    if (!IsValid(motor)) return;
	regulateSpeed(motor, speed, MotorForward);
}

void regulateSpeedBackward(SmoothMotor motor, uint16_t speed) {
    if (!IsValid(motor)) return;
	regulateSpeed(motor, speed, MotorBackward);
}

void regulateDirSpeed(SmoothMotor motor, int16_t speed) {
    if (!IsValid(motor)) return;
	if (speed == 0) {
		regulateStopMotor(motor);
	} else {
		regulateSpeed(motor, motor_toUnsignedSpeed(speed), speed < 0 ? MotorBackward : MotorForward);
	}
}

void handle_motor_tick(_SmoothMotor motor) {
    // Load all values into registers.
    MotorDirection targetDir = motor->targetDirection;
    uint16_t targetSpeed = motor->targetSpeed;

    MotorDirection currentDir = motor->currentDirection;
    uint16_t currentSpeed = motor->currentSpeed;
    uint16_t adjustment = motor->adjustment_step;

	if (currentSpeed != targetSpeed || currentDir != targetDir) {
		if (currentDir != MotorStopped && currentDir != targetDir) {
			// Slowing down until we can change the direction.
			if (currentSpeed < adjustment) {
				// Reached almost zero. Now we either finished stopping,
				// or can continue in the other direction.
				currentSpeed = targetDir == MotorStopped ? 0 : adjustment;
				currentDir = targetDir;
			} else {
				currentSpeed -= adjustment;
			}
		} else {
            currentDir = targetDir;
			// Going in the correct direction already.
			if (currentSpeed < targetSpeed) { // Speeding up
				if (targetSpeed - currentSpeed < adjustment) {
					currentSpeed = targetSpeed;
				} else {
					currentSpeed += adjustment;
				}
			} else { // Slowing down
				if (currentSpeed - targetSpeed < adjustment) {
					currentSpeed = targetSpeed;
				} else {
					currentSpeed -= adjustment;
				}
			}
		}

		// After the calculations, update the actual value.
		motor->currentSpeed = currentSpeed;
        motor->currentDirection = currentDir;
		motor->speedSetter(motor->motor, currentSpeed, currentDir);
	}
}

void motor_smooth_tick() {
	_SmoothMotor motor = NULL;
    LL_FOREACH(motors, motor) {
        handle_motor_tick(motor);
    }
}

// Can be linked to a real ISR.
void __vector_SMOOTH_MOTOR_TIMER_INTERRUPT() INTERRUPT_FUNCTION;
void __vector_SMOOTH_MOTOR_TIMER_INTERRUPT() {
    motor_smooth_tick();
}
