#ifndef __MOTOR_STEP__
#define __MOTOR_STEP__

#include <tank_os_common.h>
#include "port.h"
#include "motor.h"

DEFINE_HANDLE(StepMotor);
#define PinStepMotor 9

typedef enum {
    StepMotorNormal = 0,
    StepMotorInverseDir = _BV(0),
    StepMotorInverseEnable = _BV(1),
    StepMotorInverseStep = _BV(2)
} StepMotorFlags;

typedef int32_t pos_t; // Position in steps
typedef uint32_t steps_t;
typedef uint16_t ticks_t;

StepMotor newStepMotor(Pin step, Pin dir, Pin enable, steps_t stepsPerTurn, StepMotorFlags flags);
StepMotor destroyStepMotor(StepMotor motor);
BOOL stepMotorValid(StepMotor motor);

// If enable-Pin given in newStepMotor
void enableStepMotor(StepMotor motor);
void disableStepMotor(StepMotor motor);
BOOL stepMotorEnabled(StepMotor motor);

// Sets the maximum frequency for movements
// Speed is given in turns per 100 minutes
BOOL stepMotorSetMaxSpeed(StepMotor motor, speed_t speed); // Return FALSE if speed is too high
speed_t stepMotorGetMaxSpeed(StepMotor motor);

void stepMotorStep(StepMotor motor, pos_t numSteps);
void stepMotorRotate(StepMotor motor, MotorDirection dir);
void stepMotorStop(StepMotor motor);
void stepMotorForceStop(StepMotor motor);

pos_t stepMotorPosition(StepMotor motor);
void stepMotorResetPosition(StepMotor motor, pos_t position);

// Call once before creating first motor.
void setupStepMotors(ticks_t ticks_per_second);
void motor_step_tick();

typedef enum {
	StepMotorPulseZero,
	StepMotorPulse1us,
	StepMotorPulse10us,
	StepMotorPulse50us,
	StepMotorPulse100us
} StepMotorPulse;

extern StepMotorPulse stepMotorPulse;

#endif // __MOTOR_STEP__
