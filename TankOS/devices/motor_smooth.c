/*
 * motor_smooth.c
 *
 * Created: 26.04.2012 17:24:51
 *  Author: Anton
 */

#include "motor_smooth.h"
#include <uthash/utlist.h>
#include <misc/klib.h>
#include <kernel/mutex/mutex.h>

static volatile uint16_t __adjustment_step = 1;

typedef struct _SmoothMotor {
	Motor motor;
    Mutex mutex;

	// Current state
	uint16_t currentSpeed;
	MotorDirection currentDirection;

	// Target state
	uint16_t targetSpeed;
	MotorDirection targetDirection;
} *_SmoothMotor;

typedef struct MotorList {
    SmoothMotor motor;
    struct MotorList *next;
} *MotorList;

static MotorList motors;

static MotorList find_list_element(SmoothMotor motor) {
    MotorList element = NULL;
    LL_FOREACH(motors, element) {
        if (Equal(element->motor, motor)) break;
    }
    return element;
}

#define MOTOR Get(struct _SmoothMotor, motor)

SmoothMotor newSmoothMotor(Motor _motor) {
    if (!motorValid(_motor)) return Invalid(SmoothMotor);
    _SmoothMotor motor = kalloc(sizeof(struct _SmoothMotor));
    if (!motor) return Invalid(SmoothMotor);
    MotorList listElement = kalloc(sizeof(struct MotorList));
    if (!listElement) {
        free(motor);
        return Invalid(SmoothMotor);
    }
    Mutex mutex = mutex_create();
    if (!IsValid(mutex)) {
        free(motor);
        free(listElement);
        return Invalid(SmoothMotor);
    }

    motor->motor = _motor;
    motor->currentSpeed = getSpeed(_motor);
    motor->currentDirection = getDirection(_motor);
    motor->targetSpeed = motor->currentSpeed;
    motor->targetDirection = motor->currentDirection;
    motor->mutex = mutex;
    SmoothMotor smooth = As(SmoothMotor, motor);
    listElement->motor = smooth;
    listElement->next = NULL;
    LL_APPEND(motors, listElement);
    return smooth;
}

SmoothMotor destroySmoothMotor(SmoothMotor motor) {
    if (IsValid(motor)) {
        MotorList element = find_list_element(motor);
        if (element)
            LL_DELETE(motors, element);
        mutex_destroy(MOTOR->mutex);
        free(MOTOR);
    }
    return Invalid(SmoothMotor);
}

BOOL smoothMotorValid(SmoothMotor motor) {
    if (!IsValid(motor)) return FALSE;
    if (!motorValid(MOTOR->motor)) return FALSE;
    if (!IsValid(MOTOR->mutex)) return FALSE;
    if (!find_list_element(motor)) return FALSE;
    return TRUE;
}

void setAdjustmentStep(uint16_t step) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        __adjustment_step = step;
    }
}

uint16_t motor_toUnsignedSpeed(int16_t speed); // motor.c

void regulateStopMotor(SmoothMotor motor) {
    if (!IsValid(motor)) return;
	regulateSpeed(motor, 0, MotorStopped);
}

void regulateSpeed(SmoothMotor motor, uint16_t speed, MotorDirection direction) {
    if (!IsValid(motor)) return;
	mutex_lock(MOTOR->mutex);
	MOTOR->targetSpeed = speed;
	MOTOR->targetDirection = direction;
	mutex_release(MOTOR->mutex);
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

void handle_motor_tick(SmoothMotor motor) {
    if (!IsValid(motor)) return;

    // Load all values into registers.
    mutex_lock(MOTOR->mutex);
    MotorDirection targetDir = MOTOR->targetDirection;
    uint16_t targetSpeed = MOTOR->targetSpeed;
    mutex_release(MOTOR->mutex);

    MotorDirection currentDir = MOTOR->currentDirection;
    uint16_t currentSpeed = MOTOR->currentSpeed;
    uint16_t adjustment;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        adjustment = __adjustment_step;
    }

	if (currentSpeed != targetSpeed || currentDir != targetDir) {
		if (currentDir != MotorStopped && currentDir != targetDir) {
			// Slowing down until we can change the direction.
			if (currentSpeed < adjustment) {
				// Reached almost zero. Now we either finished stopping,
				// or can continue in the other direction.
				currentSpeed = targetDir == MotorStopped ? 0 : 1;
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
		MOTOR->currentSpeed = currentSpeed;
        MOTOR->currentDirection = currentDir;
		setSpeed(MOTOR->motor, currentSpeed, currentDir);
	}
}

void motor_smooth_tick() {
	MotorList element = NULL;
    LL_FOREACH(motors, element) {
        handle_motor_tick(element->motor);
    }
}

// Can be linked to a real ISR.
void __vector_SMOOTH_MOTOR_TIMER_INTERRUPT() INTERRUPT_FUNCTION;
void __vector_SMOOTH_MOTOR_TIMER_INTERRUPT() {
    motor_smooth_tick();
}
