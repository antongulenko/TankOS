#include "arm.h"
#include <kernel/klib.h>

#define OPPOSITE(dir) (dir == MotorForward ? MotorBackward : MotorBackward)

static void assertCalibrationDir(MotorDirection calibrationDir, MotorDirection expected, char* note) {
	// Sanity check that encoder/motor/hall-sensor directions are wired correctly
	if (calibrationDir != expected) {
		klog("tud:%i:%s\n", calibrationDir, note); // Tank-Arm unexpected direction
	}
}

static void advanceCalibration(TankArm arm, MotorDirection now) {
	MotorDirection calibrationDir = arm->calibrationDir;
	switch (arm->calibration) {
		case NotCalibrated:
			if (now == OPPOSITE(calibrationDir)) {
				stepMotorResetPosition(arm->motor, 0);
				encoderReset(arm->encoder, 0);
				arm->calibration = CalibratedOne;
				calibrateTankArm(arm);
			}
			break;
		case CalibratedOne:
			if (now == calibrationDir) {
				// Zero position should be at the "back" hall-sensor, regardless of calibrationDir.
				pos_t motorSwing = stepMotorPosition(arm->motor);
				if (motorSwing < 0) {
					assertCalibrationDir(calibrationDir, MotorBackward, "M");
					stepMotorResetPosition(arm->motor, 0);
					motorSwing = -motorSwing;
				} else {
					assertCalibrationDir(calibrationDir, MotorForward, "M");
				}

				encoder_pos_t encoderSwing = encoderState(arm->encoder);
				if (encoderSwing < 0) {
					assertCalibrationDir(calibrationDir, MotorBackward, "E");
					encoderReset(arm->encoder, 0);
					encoderSwing = -encoderSwing;
				} else {
					assertCalibrationDir(calibrationDir, MotorForward, "E");
				}

				arm->fullMotorSwing = motorSwing;
				arm->fullEncoderSwing = encoderSwing;
				arm->calibration = CalibratedFull;
			}
			break;
		default:
			break;
	}
}

static void hallCallbackFront(void *param) {
	TankArm arm = (TankArm) param;
	if (arm == NULL) return;
	if (hallSensorState(arm->front)) {
		stepMotorForceStop(arm->motor);
		advanceCalibration(arm, MotorForward);
	}
}

static void hallCallbackBack(void *param) {
	TankArm arm = (TankArm) param;
	if (arm == NULL) return;
	if (hallSensorState(arm->back)) {
		stepMotorForceStop(arm->motor);
		advanceCalibration(arm, MotorBackward);
	}
}

BOOL tankArmInitialize(TankArm arm) {
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

void destroyTankArm(TankArm arm) {
	if (arm == NULL) return;
	arm->motor = destroyStepMotor(arm->motor);
	arm->encoder = destroyEncoder(arm->encoder);
	arm->front = destroyHallSensor(arm->front);
	arm->back = destroyHallSensor(arm->back);
	arm->calibrationDir = MotorBackward;
	arm->calibration = NotCalibrated;
	arm->fullMotorSwing = 0;
	arm->fullEncoderSwing = 0;
}

void calibrateTankArm(TankArm arm) {
	if (arm->calibration == NotCalibrated) {
		stepMotorRotate(arm->motor, OPPOSITE(arm->calibrationDir));
	} else if (arm->calibration == CalibratedOne) {
		stepMotorRotate(arm->motor, arm->calibrationDir);
	}
}

void recalibrateTankArm(TankArm arm) {
	arm->calibration = NotCalibrated;
	calibrateTankArm(arm);
}

arm_pos_t tankArmPosition(TankArm arm) {
	if (arm == NULL || arm->calibration != CalibratedFull) return 0;
	encoder_pos_t encoder = encoderState(arm->encoder);
	encoder_pos_t full = arm->fullEncoderSwing;
	int32_t pos = ((int32_t) encoder * 128) / (int32_t) full;
	if (pos >= 127) return 127;
	else if (pos <= -128) return -128;
	return (arm_pos_t) pos;
}

BOOL tankArmMove(TankArm arm, arm_pos_t move) {
	if (arm == NULL || arm->calibration != CalibratedFull) return FALSE;
	if (hallSensorState(arm->front) && move > 0) return FALSE;
	if (hallSensorState(arm->back) && move < 0) return FALSE;
	
	// TODO add encoder control

	int64_t motorMove = (int64_t) move * (int64_t) arm->fullMotorSwing;
	motorMove /= 128;
	stepMotorStep(arm->motor, (pos_t) motorMove);
	return TRUE;
}

void getTankArmState(TankArm arm, TankArmState *state) {
	if (arm == NULL || state == NULL) return;
	state->backSensor = (uint16_t) hallSensorState(arm->back);
	state->frontSensor = (uint16_t) hallSensorState(arm->front);
	state->encoderPos = encoderState(arm->encoder);
	state->motorPos = stepMotorPosition(arm->motor);
	state->armPos = tankArmPosition(arm);
	state->calibration = (uint16_t) arm->calibration;
	state->fullMotorSwing = arm->fullMotorSwing;
	state->fullEncoderSwing = arm->fullEncoderSwing;
}
