#include "arm.h"
#include <kernel/klib.h>

// TODO should maybe be configurable
#define CALIBRATION_HALL(arm) (arm->back)
#define CALIBRATION_DIR(arm) MotorBackward
#define SLOWDOWN_PROXIMITY 50

static StepMotorCommand TankArm_move(TankArm arm) {
	if (arm->calibration == Calibrating) {
		if (hallSensorState(CALIBRATION_HALL(arm))) {
			stepMotorResetPosition(arm->motor, 0);
			encoderReset(arm->encoder, 0);
			arm->calibration = Calibrated;
			return STEP_CMD_STOP;
		} else {
			return (StepMotorCommand) { STEP_CMD_FLAG_REGULATE, CALIBRATION_DIR(arm) };
		}
	}

	encoder_pos_t pos = encoderState(arm->encoder);
	encoder_pos_t target = arm->targetPos;
	MotorDirection dir;
	uint8_t flag = 0;

	if (pos == target) {
		return STEP_CMD_STOP;
	} else if (pos < target) {
		if (target - pos < SLOWDOWN_PROXIMITY) flag |= STEP_CMD_FLAG_SLOW;
		dir = MotorForward;
	} else {
		if (pos - target < SLOWDOWN_PROXIMITY) flag |= STEP_CMD_FLAG_SLOW;
		dir = MotorBackward;
	}
	return (StepMotorCommand) { flag | STEP_CMD_FLAG_REGULATE, dir };
}

static StepMotorCommand TankArmMotorCommand(MotorDirection currentDir, void *userData) {
	TankArm arm = (TankArm) userData;
	if (arm == NULL) return STEP_CMD_FINISH;
	StepMotorCommand cmd = TankArm_move(arm);
	if (hallSensorState(arm->front)) {
		if (cmd.continueDir == MotorForward) {
			klog("iaf\n"); // Impossible arm movement front
			return STEP_CMD_STOP;
		}
		cmd.flags |= STEP_CMD_FLAG_FORCE; // Immediately switch direction
	}
	if (hallSensorState(arm->back)) {
		if (cmd.continueDir == MotorBackward) {
			klog("iab\n"); // Impossible arm movement back
			return STEP_CMD_STOP;
		}
		cmd.flags |= STEP_CMD_FLAG_FORCE; // Immediately switch direction
	}
	return cmd;
}

// These hall callbacks are just a precaution if motor is used without TankArmMotorCommand
static void hallCallbackFront(void *param) {
	TankArm arm = (TankArm) param;
	if (arm == NULL) return;
	if (hallSensorState(arm->front)) {
		stepMotorForceStop(arm->motor);
	}
}

static void hallCallbackBack(void *param) {
	TankArm arm = (TankArm) param;
	if (arm == NULL) return;
	if (hallSensorState(arm->back)) {
		stepMotorForceStop(arm->motor);
	}
}

BOOL tankArmInitialize(TankArm arm) {
	if (arm == NULL) return FALSE;
	arm->calibration = NotCalibrated;
	if (!IsValid(arm->motor) ||
		!IsValid(arm->front) ||
		!IsValid(arm->back) ||
		!IsValid(arm->encoder)) {
		klog("tai\n"); // Tank arm Invalid
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
	arm->calibration = NotCalibrated;
	arm->targetPos = 0;
	arm->encoderStepsPerTurn = 0;
}

static void startMoving(TankArm arm) {
	stepMotorControlledRotate(arm->motor, TankArmMotorCommand, (void*) arm);
}

void calibrateTankArm(TankArm arm) {
	arm->calibration = Calibrating;
	arm->targetPos = 0;
	startMoving(arm);
}

void tankArmMoveTo(TankArm arm, pos_t targetPos) {
	arm->targetPos = targetPos;
	if (arm->calibration == Calibrating) arm->calibration = NotCalibrated;
	startMoving(arm);
}

void getTankArmState(TankArm arm, TankArmState *state) {
	if (arm == NULL || state == NULL) return;
	state->backSensor = (uint16_t) hallSensorState(arm->back);
	state->frontSensor = (uint16_t) hallSensorState(arm->front);
	state->encoderPos = encoderState(arm->encoder);
	state->motorPos = stepMotorPosition(arm->motor);
	state->calibration = (uint16_t) arm->calibration;
	state->encoder_error = getEncoderError(arm->encoder);
	state->targetPos = arm->targetPos;
}
