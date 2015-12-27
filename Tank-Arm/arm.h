#ifndef ___tank_arm_impl___
#define ___tank_arm_impl___

#include <devices/hall.h>
#include <devices/encoder.h>
#include <devices/motor_step.h>

typedef int8_t arm_pos_t; // -128 .. +127

typedef enum {
	NotCalibrated = 0,
	CalibratedOne = 1,
	CalibratedFull = 2
} TankArmCalibration;

typedef struct TankArm {
	StepMotor motor;
	HallSensor front;
	HallSensor back;
	Encoder encoder;
	MotorDirection calibrationDir;
	TankArmCalibration calibration;

	// Will be written after calibration
	pos_t fullMotorSwing;
	encoder_pos_t fullEncoderSwing;
} *TankArm;

// Invoke after initializing all elements of arm
BOOL tankArmInitialize(TankArm arm);
void destroyTankArm(TankArm arm);

void calibrateTankArm(TankArm arm);
void recalibrateTankArm(TankArm arm); // Force calibration

arm_pos_t tankArmPosition(TankArm arm);
BOOL tankArmMove(TankArm arm, arm_pos_t pos);

typedef struct TankArmState {
	uint16_t backSensor; // enum BOOL
	uint16_t frontSensor; // enum BOOL
	encoder_pos_t encoderPos;
	pos_t motorPos;
	arm_pos_t armPos;
	uint8_t ___alignment;

	uint16_t calibration; // enum TankArmCalibration
	pos_t fullMotorSwing;
	encoder_pos_t fullEncoderSwing;
} TankArmState;

void getTankArmState(TankArm arm, TankArmState *state);

#endif // ___tank_arm_impl___
