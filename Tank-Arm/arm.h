#ifndef ___tank_arm_impl___
#define ___tank_arm_impl___

#include <devices/hall.h>
#include <devices/encoder.h>
#include <devices/motor_step.h>

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
} TankArm;

// Invoke after initializing all elements of arm
BOOL tankArmInitialize(TankArm *arm);

void destroyTankArm(TankArm *arm);

BOOL tankArmShouldMove(TankArm *arm);
void calibrateTankArm(TankArm *arm);
void recalibrateTankArm(TankArm *arm); // Force calibration

#endif // ___tank_arm_impl___
