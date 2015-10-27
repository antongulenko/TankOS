/*
 * motor_smooth.c
 *
 * Created: 26.04.2012 17:24:51
 *  Author: Anton
 */

#include "motor_smooth.h"
#include <uthash/utlist.h>
#include <kernel/klib.h>

uint16_t smooth_motor_default_step = 1;

typedef struct _SmoothMotor {
	UnderlyingMotor motor;
    SetUnderlyingSpeed speedSetter;
    struct _SmoothMotor *next;
    uint16_t adjustment_step;

    speed_t min_speed;

	// Current state
	speed_t currentSpeed;
	MotorDirection currentDirection;

	// Target state
	speed_t targetSpeed;
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
    motor->min_speed = smooth_motor_default_step;
    LL_APPEND(motors, motor);
    return As(SmoothMotor, motor);
}

static void normalMotorSetSpeed(UnderlyingMotor motor, speed_t speed, MotorDirection direction) {
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

void smoothMotorSetStep(SmoothMotor motor, speed_t step) {
    MOTOR->adjustment_step = step;
    if (MOTOR->min_speed < step) {
        MOTOR->min_speed = step;
    }
}

void smoothMotorSetMinSpeed(SmoothMotor motor, speed_t min_speed) {
    if (min_speed >= MOTOR->adjustment_step) {
        MOTOR->min_speed = min_speed;
    }
}

speed_t motor_toUnsignedSpeed(uspeed_t speed); // motor.c

void regulateStopMotor(SmoothMotor motor) {
    if (!IsValid(motor)) return;
	regulateSpeed(motor, 0, MotorStopped);
}

void forceStopMotor(SmoothMotor motor) {
    forceMotorSpeed(motor, 0, MotorStopped);
}

void forceMotorSpeed(SmoothMotor motor, speed_t speed, MotorDirection dir) {
    if (!IsValid(motor)) return;
    MOTOR->targetSpeed = speed;
    MOTOR->currentSpeed = speed;
    MOTOR->targetDirection = dir;
    MOTOR->currentDirection = dir;
    MOTOR->speedSetter(MOTOR->motor, speed, dir);
}

void regulateSpeed(SmoothMotor motor, speed_t speed, MotorDirection direction) {
    if (!IsValid(motor)) return;
    if (speed < MOTOR->min_speed) speed = MOTOR->min_speed;
    MOTOR->targetSpeed = speed;
	MOTOR->targetDirection = direction;
    if (MOTOR->currentDirection == MotorStopped) {
        // When starting up, immediately set the direction and min speed
        MOTOR->currentSpeed = MOTOR->min_speed;
        MOTOR->currentDirection = direction;
        MOTOR->speedSetter(MOTOR->motor, MOTOR->min_speed, direction);
    }
}

void regulateSpeedForward(SmoothMotor motor, speed_t speed) {
    if (!IsValid(motor)) return;
	regulateSpeed(motor, speed, MotorForward);
}

void regulateSpeedBackward(SmoothMotor motor, speed_t speed) {
    if (!IsValid(motor)) return;
	regulateSpeed(motor, speed, MotorBackward);
}

void regulateDirSpeed(SmoothMotor motor, uspeed_t speed) {
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
    speed_t targetSpeed = motor->targetSpeed;

    MotorDirection currentDir = motor->currentDirection;
    speed_t currentSpeed = motor->currentSpeed;
    speed_t adjustment = motor->adjustment_step;
    speed_t minSpeed = motor->min_speed;

	if (currentSpeed != targetSpeed || currentDir != targetDir) {
		if (currentDir != MotorStopped && currentDir != targetDir) {
			// Slowing down until we can change the direction.
			if (currentSpeed <= minSpeed) {
				// Reached min speed. Now we either finished stopping,
				// or can continue in the other direction.
				currentSpeed = targetDir == MotorStopped ? 0 : minSpeed;
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

void smoothMotorTick(SmoothMotor motor) {
    handle_motor_tick(MOTOR);
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
