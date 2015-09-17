#include "motor_step.h"
#include <kernel/klib.h>
#include <uthash/utlist.h>

typedef enum {
    STOP,
    STEP,
    ROTATE
} MotorTask;

typedef struct _StepMotor {
    Pin step;
    Pin dir;
    Pin enable;

    // Config
    pos_t ticks_between_steps;
    pos_t full_turn;
    StepMotorFlags flags;

    // State
    StepMotorDirection direction;
    pos_t position;
    pos_t wait_ticks; // Reset to ticks_between_steps when reaches zero
    MotorTask task;
    pos_t leftover_steps;
    struct _StepMotor *next;
} *_StepMotor;

#define MOTOR Get(struct _StepMotor, motor)

uint16_t motor_step_ticks_per_second;
_StepMotor _step_motors;

static void setMotorDir(_StepMotor motor, StepMotorDirection dir) {
    motor->direction = dir;
    BOOL dirOne = (BOOL) dir;
    if (motor->flags & StepMotorInverseDir)
        dirOne = !dirOne;
    writePin(motor->dir, dirOne);
}

static void setMotorPower(_StepMotor motor, BOOL enable) {
    if (!IsValid(motor->enable)) return;
    if (motor->flags & StepMotorInverseEnable)
        enable = !enable;
    writePin(motor->enable, enable);
}

StepMotor newStepMotor(Pin step, Pin dir, Pin enable, pos_t stepsPerTurn, StepMotorFlags flags) {
    if (stepsPerTurn == 0) return Invalid(StepMotor);
    _StepMotor motor;
    if (!occupyPinDirectly(step, PinStepMotor, EmptyConfigData) ||
            !occupyPinDirectly(dir, PinStepMotor, EmptyConfigData) ||
            (IsValid(enable) && !occupyPinDirectly(enable, PinStepMotor, EmptyConfigData)) ||
            !(motor = kalloc(sizeof(struct _StepMotor)))) {
        deOccupyPin(step, PinStepMotor);
        deOccupyPin(dir, PinStepMotor);
        deOccupyPin(enable, PinStepMotor);
        return Invalid(StepMotor);
    }
    setPinOutput(step);
    setPinOutput(dir);
    setPinOutput(enable);

    motor->step = step;
    motor->dir = dir;
    motor->enable = enable;
    motor->full_turn = stepsPerTurn;
    motor->flags = flags;
    motor->next = NULL;

    // TODO need mechanism to reset motor to well-known position 0
    motor->position = 0;
    motor->wait_ticks = motor->ticks_between_steps;

    LL_APPEND(_step_motors, motor);
    StepMotor stepMotor = As(StepMotor, motor);
    stepMotorSetFrequency(stepMotor, motor_step_ticks_per_second); // Default: maximum frequency
    setMotorDir(motor, StepMotorForward);
    stepMotorStop(stepMotor);
    return stepMotor;
}

StepMotor destroyStepMotor(StepMotor motor) {
    if (IsValid(motor)) {
        deOccupyPin(MOTOR->step, PinStepMotor);
        deOccupyPin(MOTOR->dir, PinStepMotor);
        deOccupyPin(MOTOR->enable, PinStepMotor);
        LL_DELETE(_step_motors, MOTOR);
        free(MOTOR);
    }
    return Invalid(StepMotor);
}

BOOL stepMotorValid(StepMotor motor) {
    if (!IsValid(motor)) return FALSE;
    if (pinOccupation(MOTOR->dir) != PinStepMotor) return FALSE;
    if (pinOccupation(MOTOR->step) != PinStepMotor) return FALSE;
    if (IsValid(MOTOR->enable) && pinOccupation(MOTOR->enable) != PinStepMotor) return FALSE;
    return TRUE;
}

BOOL stepMotorSetFrequency(StepMotor motor, uint16_t stepsPerSecond) {
    if (!IsValid(motor)) return FALSE;
    if (stepsPerSecond == 0 ||
            motor_step_ticks_per_second == 0 ||
            stepsPerSecond > motor_step_ticks_per_second) {
        MOTOR->ticks_between_steps = 1;
        return FALSE;
    } else {
        MOTOR->ticks_between_steps = motor_step_ticks_per_second / stepsPerSecond;
        return TRUE;
    }
}

uint16_t stepMotorGetFrequency(StepMotor motor) {
    if (!IsValid(motor)) return 0;
    return motor_step_ticks_per_second / MOTOR->ticks_between_steps;
}

void stepMotorStep(StepMotor motor, pos_t numSteps, StepMotorDirection dir) {
    if (!IsValid(motor)) return;
    MOTOR->task = STEP;
    MOTOR->leftover_steps = numSteps;
    setMotorDir(MOTOR, dir);
    setMotorPower(MOTOR, TRUE);
}

void stepMotorTurn(StepMotor motor, deg_t degrees, StepMotorDirection dir) {
    if (!IsValid(motor)) return;
    pos_t steps = degrees * MOTOR->full_turn / 360;
    stepMotorStep(motor, steps, dir);
}

void stepMotorRotate(StepMotor motor, StepMotorDirection dir) {
    if (!IsValid(motor)) return;
    MOTOR->task = ROTATE;
    setMotorDir(MOTOR, dir);
    setMotorPower(MOTOR, TRUE);
}

static void stopMotor(_StepMotor motor) {
    motor->task = STOP;
    motor->leftover_steps = 0;
    setMotorPower(motor, FALSE);
}

void stepMotorStop(StepMotor motor) {
    if (!IsValid(motor)) return;
    stopMotor(MOTOR);
}

pos_t stepMotorPosition(StepMotor motor) {
    if (!IsValid(motor)) return 0;
    return MOTOR->position;
}

deg_t stepMotorAngle(StepMotor motor) {
    if (!IsValid(motor)) return 0;
    pos_t pos = MOTOR->position;
    return pos * 360 / MOTOR->full_turn;
}

static void handle_motor_tick(_StepMotor motor) {
    MotorTask task = motor->task;
    switch (task) {
        case STOP:
            return;
        case STEP:
        case ROTATE:
            // Generate a pulse
            setPinOne(motor->step);
            pos_t pos = motor->position;
            if (motor->direction == StepMotorForward)
                motor->position = (pos + 1) % motor->full_turn;
            else if (pos == 0)
                motor->position = motor->full_turn;
            else
                motor->position = pos - 1;
            if (task == STEP) {
                if (motor->leftover_steps <= 1) {
                    stopMotor(motor);
                } else {
                    motor->leftover_steps--;
                }
            }
    }
}

void motor_step_tick() {
    _StepMotor i = NULL;
    LL_FOREACH(_step_motors, i) {
        handle_motor_tick(i);
    }
    // TODO is this pulse too short? Delay here?
    i = NULL;
    LL_FOREACH(_step_motors, i) {
        setPinZero(i->step);
    }
}

// Can be linked to a real ISR.
void __vector_STEP_MOTOR_TIMER_INTERRUPT() INTERRUPT_FUNCTION;
void __vector_STEP_MOTOR_TIMER_INTERRUPT() {
    motor_step_tick();
}
