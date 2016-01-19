#ifndef ___tank_arm_impl___
#define ___tank_arm_impl___

#include <devices/hall.h>
#include <devices/encoder.h>
#include <devices/motor_step.h>

typedef struct TankArm *TankArm;

typedef StepMotorCommand (*TankArmTask)(TankArm *arm, MotorDirection currentDir);

typedef enum {
	NotCalibrated = 0,
	Calibrating = 1,
	Calibrated = 2
} TankArmCalibration;

typedef struct TankArm {
	StepMotor motor;
	HallSensor front;
	HallSensor back;
	Encoder encoder;

	// Configuration
	encoder_pos_t encoderStepsPerTurn;

	// Internal state
	encoder_pos_t targetPos;
	TankArmCalibration calibration;
} *TankArm;

// Invoke after initializing all elements of arm
BOOL tankArmInitialize(TankArm arm);
void destroyTankArm(TankArm arm);

void calibrateTankArm(TankArm arm);
void tankArmMoveTo(TankArm arm, pos_t pos);

typedef struct TankArmState {
	uint16_t backSensor; // enum BOOL
	uint16_t frontSensor; // enum BOOL
	encoder_pos_t encoderPos;
	pos_t motorPos;
	encoder_pos_t targetPos;

	uint16_t calibration; // enum TankArmCalibration
	uint16_t ___alignment;
	EncoderError encoder_error;
} TankArmState;

void getTankArmState(TankArm arm, TankArmState *state);

#endif // ___tank_arm_impl___
