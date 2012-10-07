/*
 * motor_smooth.c
 *
 * Created: 26.04.2012 17:24:51
 *  Author: Anton
 */ 

#include "motor_smooth.h"

// This function must be implemented by the kernel.
// motor_smooth_tick must be called regularly, with an externally defined
// frequency.
void motor_smooth_start_tick(PSmoothMotor motor);
void motor_smooth_stop_tick(PSmoothMotor motor);

// 'Imported' from motor.c. Avoided adding internal-header just for this function.
uint16_t motor_toUnsignedSpeed(int16_t speed);

void regulateStopMotor(PSmoothMotor motor) {
	regulateSpeed(motor, 0, MOTOR_STOPPED);
}

void regulateSpeed(PSmoothMotor motor, uint16_t speed, MotorDirection direction) {
	mutex_lock(motor->mutex);
	motor->targetSpeed = speed;
	motor->targetDirection = direction;
	if (!motor->tickRunning) {
		motor_smooth_start_tick(motor);
		motor->tickRunning = TRUE;
	}
	mutex_release(motor->mutex);
}

void regulateSpeedForward(PSmoothMotor motor, uint16_t speed) {
	regulateSpeed(motor, speed, FORWARD);
}

void regulateSpeedBackward(PSmoothMotor motor, uint16_t speed) {
	regulateSpeed(motor, speed, BACKWARD);
}

void regulateDirSpeed(PSmoothMotor motor, int16_t speed) {
	if (speed == 0) {
		regulateStopMotor(motor);
	} else {
		regulateSpeed(motor, motor_toUnsignedSpeed(speed), speed < 0 ? BACKWARD : FORWARD);
	}		
}

int motor_smooth_needsTick(PSmoothMotor motor) {
	return motor->targetSpeed != motor->currentSpeed ||
		motor->targetDirection != motor->currentDirection;
}

void motor_smooth_tick(PSmoothMotor motor) {
	mutex_lock(motor->mutex);
	
	// Make sure to not do this if not needed...
	if (motor_smooth_needsTick(motor)) {
		// Load all values into registers.
		MotorDirection targetDir = motor->targetDirection;
		uint16_t currentSpeed = motor->currentSpeed;
		uint16_t targetSpeed = motor->targetSpeed;
		uint16_t adjustment = motor->adjustmentStep;
	
		if (motor->currentDirection != targetDir) {
			// Slowing down until we can change the direction.
			if (currentSpeed < adjustment) {
				// Reached zero. Now we either finished stopping,
				// or can continue in the other direction.
				currentSpeed = motor->motor->minValue;
				if (targetDir != MOTOR_STOPPED)
					// Avoid stopping the motor when changing direction.
					currentSpeed++;
				motor->currentDirection = targetDir;
			} else {
				currentSpeed -= adjustment;
			}
		} else {
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
	
		// After the calculations, update the actual value!
		motor->currentSpeed = currentSpeed;
		setSpeed(motor->motor, motor->currentSpeed, motor->currentDirection);
		
		// If we are ready adjusting, stop ticking.
		if (!motor_smooth_needsTick(motor)) {
			motor_smooth_stop_tick(motor);
			motor->tickRunning = FALSE;
		}
	}		
	mutex_release(motor->mutex);
}
