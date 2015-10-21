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
    StepMotorInverseEnable = _BV(1)
} StepMotorFlags;

typedef int32_t pos_t; // Position in steps
typedef uint32_t steps_t;
typedef uint16_t ticks_t;
typedef uint16_t freq_t; // This is similar to speed_t from motor.h

StepMotor newStepMotor(Pin step, Pin dir, Pin enable, steps_t stepsPerTurn, StepMotorFlags flags);
StepMotor destroyStepMotor(StepMotor motor);
BOOL stepMotorValid(StepMotor motor);

// If enable-Pin given in newStepMotor
void enableStepMotor(StepMotor motor);
void disableStepMotor(StepMotor motor);
BOOL stepMotorEnabled(StepMotor motor);

// Sets the maximum frequency for movements
BOOL stepMotorSetMaxFrequency(StepMotor motor, freq_t stepsPerSecond); // Return FALSE if frequency is too high
freq_t stepMotorGetMaxFrequency(StepMotor motor);

void stepMotorStep(StepMotor motor, pos_t numSteps);
void stepMotorRotate(StepMotor motor, MotorDirection dir);
void stepMotorStop(StepMotor motor);
void stepMotorForceStop(StepMotor motor);

pos_t stepMotorPosition(StepMotor motor);

// Call once before creating first motor.
void setupStepMotors(ticks_t ticks_per_second, ticks_t ticks_for_speedup);
void motor_step_tick();

#endif // __MOTOR_STEP__
