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

// Deactivate the current controller. Force continueDir = MotorStopped, ignore rest of command.
#define STEP_CMD_FLAG_FINISH _BV(0)
// Change motor direction to continueDir smoothly (use regulate*)
#define STEP_CMD_FLAG_REGULATE _BV(1)
// Change motor direction immediately (overrides STEP_CMD_REGULATE)
#define STEP_CMD_FLAG_FORCE _BV(1)
// Slow down speed if STEP_CMD_REGULATE or STEP_CMD_FORCE is given. No effect if continueDir = MotorStopped.
#define STEP_CMD_FLAG_SLOW _BV(2)

typedef struct StepMotorCommand {
	uint8_t flags;
	MotorDirection continueDir;
} StepMotorCommand;

#define STEP_CMD_CONTINUE ((StepMotorCommand) { 0, MotorStopped /* direction irrelevant */ })
#define STEP_CMD_FINISH ((StepMotorCommand) { STEP_CMD_FLAG_FINISH, MotorStopped })

typedef StepMotorCommand (*StepMotorController)(StepMotor motor, MotorDirection currentDir);

void stepMotorStep(StepMotor motor, pos_t numSteps);
void stepMotorRotate(StepMotor motor, MotorDirection dir);
void stepMotorControlledRotate(StepMotor motor, StepMotorController controller);
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
