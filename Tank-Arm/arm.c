#include "arm.h"
#include <kernel/klib.h>

#define OPPOSITE(dir) (dir == MotorForward ? MotorBackward : MotorBackward)
#define ABS(val) (val < 0 ? -val : val)

static void advanceCalibration(TankArm *arm, MotorDirection now) {
	switch (arm->calibration) {
		case NotCalibrated:
			if (now == arm->calibrationDir) {
				stepMotorResetPosition(arm->motor, 0);
				encoderReset(arm->encoder, 0);
				arm->calibration = CalibratedOne;
				calibrateTankArm(arm);
			}
			break;
		case CalibratedOne:
			if (now == OPPOSITE(arm->calibrationDir)) {
				pos_t motorSwing = stepMotorPosition(arm->motor);
				pos_t motorPos = motorSwing - motorSwing/2; // Works for positive and negative positions
				stepMotorResetPosition(arm->motor, motorPos);

				encoder_pos_t encoderSwing = encoderState(arm->encoder);
				encoder_pos_t encoderPos = encoderSwing - encoderSwing/2;
				encoderReset(arm->encoder, encoderPos);

				arm->fullMotorSwing = ABS(motorSwing);
				arm->fullEncoderSwing = ABS(encoderSwing);
				arm->calibration = CalibratedFull;
			}
			break;
		default:
			break;
	}
}

static void hallCallbackFront(void *param) {
	TankArm *arm = (TankArm*) param;
	if (arm == NULL) return;
	if (hallSensorState(arm->front)) {
		stepMotorForceStop(arm->motor);
		advanceCalibration(arm, MotorForward);
	}
}

static void hallCallbackBack(void *param) {
	TankArm *arm = (TankArm*) param;
	if (arm == NULL) return;
	if (hallSensorState(arm->back)) {
		stepMotorForceStop(arm->motor);
		advanceCalibration(arm, MotorBackward);
	}
}

BOOL tankArmInitialize(TankArm *arm) {
	if (arm == NULL) return FALSE;
	arm->calibration = NotCalibrated;
	if (!IsValid(arm->motor) ||
		!IsValid(arm->front) ||
		!IsValid(arm->back) ||
		!IsValid(arm->encoder)) {
		klog("tai\n"); // Tank Arm Invalid
		return FALSE;
	}
	setHallCallback(arm->front, hallCallbackFront, arm);
	setHallCallback(arm->back, hallCallbackBack, arm);
	return TRUE;
}

void destroyTankArm(TankArm *arm) {
	if (arm == NULL) return;
	arm->motor = destroyStepMotor(arm->motor);
	arm->encoder = destroyEncoder(arm->encoder);
	arm->front = destroyHallSensor(arm->front);
	arm->back = destroyHallSensor(arm->back);
}

void calibrateTankArm(TankArm *arm) {
	if (arm->calibration == NotCalibrated) {
		stepMotorRotate(arm->motor, arm->calibrationDir);
	} else if (arm->calibration == CalibratedOne) {
		stepMotorRotate(arm->motor, OPPOSITE(arm->calibrationDir));
	}
}

void recalibrateTankArm(TankArm *arm) {
	arm->calibration = NotCalibrated;
	calibrateTankArm(arm);
}

BOOL tankArmShouldMove(TankArm *arm) {
	if (arm == NULL) return FALSE;
	return !hallSensorState(arm->front) && !hallSensorState(arm->back);
}
