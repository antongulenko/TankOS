#include "motor_step.h"
#include "motor_smooth.h"
#include <kernel/klib.h>
#include <uthash/utlist.h>

typedef struct _StepMotor {
    struct _StepMotor *next;
    Pin step;
    Pin dirPin;
    Pin enable;
    
    // Config
    steps_t full_turn;
    StepMotorFlags flags;
    freq_t max_frequency;
    float min_ticks_per_step; // Based on max_frequency
    steps_t steps_for_slowdown; // Maximum number of steps it can take to slow down from max speed to stop

    // Target state 
    float target_ticks_per_step;
    MotorDirection target_dir;

    // Current state (Equals Target state except when accelerating or slowing down)
    float ticks_per_step; // Represents the current speed/frequency
    MotorDirection dir;

    // Operational state
    float wait_ticks; // Ticks before next step. Incremented by ticks_per_step when reaches < 1
    pos_t position;

    // Controlled number of steps
    BOOL counting_steps;
    steps_t leftover_steps;
} *_StepMotor;

#define MOTOR Get(struct _StepMotor, motor)

float StepAcceleration = 1.0; // Value added to/removed from ticks_per_step after every step.

static freq_t global_max_frequency;
static const freq_t global_min_frequency = 100;
static float global_max_ticks_per_step;
_StepMotor _step_motors;

void setupStepMotors(ticks_t _ticks_per_second) {
    if (_ticks_per_second == 0) _ticks_per_second = 1;
    global_max_frequency = (freq_t) _ticks_per_second;
    global_max_ticks_per_step = frequency_to_ticks(global_min_frequency);
}

static inline BOOL valid_frequency(freq_t freq) {
    return freq > 0 && global_max_frequency > 0 && freq <= global_max_frequency;
}

static inline float frequency_to_ticks(freq_t freq) {
    return (float) global_max_frequency / (float) freq;
}

StepMotor newStepMotor(Pin step, Pin dir, Pin enable, steps_t stepsPerTurn, StepMotorFlags flags) {
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

    motor->next = NULL;
    motor->step = step;
    motor->dirPin = dir;
    motor->enable = enable;
    motor->full_turn = stepsPerTurn;
    motor->flags = flags;

    // TODO need mechanism to set motor into well-defined initial position
    // or read the current position when starting
    motor->position = 0;

    LL_APPEND(_step_motors, motor);
    StepMotor stepMotor = As(StepMotor, motor);
    stepMotorSetMaxFrequency(stepMotor, global_max_frequency); // Default: maximum possible frequency
    stepMotorForceStop(stepMotor);
    return stepMotor;
}

StepMotor destroyStepMotor(StepMotor motor) {
    if (IsValid(motor)) {
        deOccupyPin(MOTOR->step, PinStepMotor);
        deOccupyPin(MOTOR->dirPin, PinStepMotor);
        deOccupyPin(MOTOR->enable, PinStepMotor);
        LL_DELETE(_step_motors, MOTOR);
        free(MOTOR);
    }
    return Invalid(StepMotor);
}

BOOL stepMotorValid(StepMotor motor) {
    if (!IsValid(motor)) return FALSE;
    if (pinOccupation(MOTOR->dirPin) != PinStepMotor) return FALSE;
    if (pinOccupation(MOTOR->step) != PinStepMotor) return FALSE;
    if (IsValid(MOTOR->enable) && pinOccupation(MOTOR->enable) != PinStepMotor) return FALSE;
    return TRUE;
}

void enableStepMotor(StepMotor motor) {
    if (IsValid(motor) && IsValid(MOTOR->enable)) {
        BOOL enableSet = TRUE;
        if (MOTOR->flags & StepMotorInverseEnable)
            enableSet = !enableSet;
        writePin(MOTOR->enable, enableSet);
    }
}

void disableStepMotor(StepMotor motor) {
    stepMotorForceStop(motor);
    if (IsValid(motor) && IsValid(MOTOR->enable)) {
        BOOL enableSet = FALSE;
        if (MOTOR->flags & StepMotorInverseEnable)
            enableSet = !enableSet;
        writePin(MOTOR->enable, enableSet);
    }
}

BOOL stepMotorEnabled(StepMotor motor) {
    if (!IsValid(motor)) return FALSE;
    if (IsValid(MOTOR->enable)) {
        BOOL enableSet = isPinOutputHigh(MOTOR->enable);
        if (MOTOR->flags & StepMotorInverseEnable)
            enableSet = !enableSet;
        return enableSet;
    } else {
        return TRUE;
    }
}

BOOL stepMotorSetMaxFrequency(StepMotor motor, freq_t stepsPerSecond) {
    if (!IsValid(motor)) return FALSE;
    BOOL res;
    if (valid_frequency(stepsPerSecond)) {
        MOTOR->min_ticks_per_step = frequency_to_ticks(stepsPerSecond);
        MOTOR->max_frequency = stepsPerSecond;
        res = TRUE;
    } else {
        MOTOR->min_ticks_per_step = 1;
        MOTOR->max_frequency = global_max_frequency;
        res = FALSE;
    }

    // Calculate number of steps to slow down from max to min speed
    MOTOR->steps_for_slowdown = (global_max_ticks_per_step - 1.0) / StepAcceleration;
    return res;
}

freq_t stepMotorGetMaxFrequency(StepMotor motor) {
    if (!IsValid(motor)) return 0;
    return MOTOR->max_frequency;
}

static inline void regulateStepMotor(_StepMotor motor, MotorDirection dir) {
    if (dir == MotorStopped)
        motor->target_ticks_per_step = global_max_ticks_per_step;
    else
        motor->target_ticks_per_step = motor->min_ticks_per_step;
    motor->target_dir = dir;
}

static inline void initiateMovement(StepMotor motor, MotorDirection dir) {
    enableStepMotor(motor);
    MOTOR->wait_ticks = 0;
    regulateStepMotor(MOTOR, dir);
}

void stepMotorStep(StepMotor motor, pos_t numSteps) {
    if (!IsValid(motor)) return;
    if (numSteps == 0) {
        stepMotorStop(motor);
        return;
    } else if (numSteps < 0) {
        initiateMovement(motor, MotorBackwards);
        MOTOR->leftover_steps = -numSteps;
    } else {
        initiateMovement(motor, MotorForward);
        MOTOR->leftover_steps = numSteps;
    }
    MOTOR->counting_steps = TRUE;
}

void stepMotorRotate(StepMotor motor, MotorDirection dir) {
    if (!IsValid(motor)) return;
    initiateMovement(motor, dir);
    MOTOR->counting_steps = FALSE;
}

void stepMotorStop(StepMotor motor) {
    if (!IsValid(motor)) return;
    initiateMovement(motor, MotorStopped);
    MOTOR->counting_steps = FALSE;
}

void stepMotorForceStop(StepMotor motor) {
    if (!IsValid(motor)) return;
    enableStepMotor(motor);
    MOTOR->dir = MotorStopped;
    MOTOR->counting_steps = FALSE;
}

pos_t stepMotorPosition(StepMotor motor) {
    if (!IsValid(motor)) return 0;
    return MOTOR->position;
}

static BOOL handle_motor_step(_StepMotor motor) {
    // See if a step should be generated
    float ticks = motor->wait_ticks;
    if (ticks > 1) {
        motor->wait_ticks = ticks - 1.0f;
        return FALSE;
    } else {
        motor->wait_ticks = ticks - 1.0f + motor->ticks_per_step;
    }

    if (motor->dir == MotorStopped)
        return FALSE;

    // Generate a pulse
    setPinOne(motor->step);
    delay_us(20);
    setPinZero(motor->step);

    if (motor->dir == MotorForward)
        motor->position++;
    else
        motor->position--;
    return TRUE;
}

static void handle_motor_tick(_StepMotor motor) {
    BOOL stepped = handle_motor_step(motor);

    if (stepped && motor->counting_steps) {
        if (motor->leftover_steps <= 1) {
            stepMotorForceStop(As(StepMotor, motor));
            return;
        } else if (motor->leftover_steps <= motor->steps_for_slowdown) {
            motor->target_ticks_per_step = global_max_ticks_per_step;
            motor->target_dir = dir;
        }
        motor->leftover_steps -= 1
    }


// TODO running steps between 0 and ticks_for_slowdown will always happen on minimal frequency
    if (leftover_steps > motor->ticks_for_slowdown) {
        speed = motor->max_frequency;
    } else {
        speed = global_min_frequency;
    }


        _StepMotor step = MOTOR;
    if (dir == MotorStopped || speed == 0) {
        step->dir = MotorStopped;
        return;
    }
    step->dir = dir;

    // Apply direction
    BOOL dirPinSet = dir == MotorForward;
    if (step->flags & StepMotorInverseDir)
        dirPinSet = !dirPinSet;
    writePin(step->dirPin, dirPinSet);

    // Apply speed
    if (valid_frequency(speed))
        step->ticks_per_step = frequency_to_ticks(speed);
    else
        step->ticks_per_step = MOTOR->min_ticks_per_step;
    if (step->wait_ticks > step->ticks_per_step)
        step->wait_ticks = step->ticks_per_step;
}

void motor_step_tick() {
    _StepMotor i = NULL;
    LL_FOREACH(_step_motors, i) {
        handle_motor_tick(i);
    }
}

// Can be linked to a real ISR.
void __vector_STEP_MOTOR_TIMER_INTERRUPT() INTERRUPT_FUNCTION;
void __vector_STEP_MOTOR_TIMER_INTERRUPT() {
    motor_step_tick();
}
