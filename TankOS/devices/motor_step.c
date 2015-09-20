#include "motor_step.h"
#include "motor_smooth.h"
#include <kernel/klib.h>
#include <uthash/utlist.h>

typedef struct _StepMotor {
    struct _StepMotor *next;
    Pin step;
    Pin dirPin;
    Pin enable;
    pos_t full_turn;
    StepMotorFlags flags;
    SmoothMotor smoothMotor;

    // Config
    uint16_t max_frequency;
    float min_ticks_per_step;

    // State controlled by SmoothMotor (smoothMotorSpeedSetter)
    float ticks_per_step; // Given by the frequency
    MotorDirection dir;

    // Operational state
    float wait_ticks; // Incremented by ticks_per_step when reaches < 1
    pos_t position;
    pos_t leftover_steps;
} *_StepMotor;

#define MOTOR Get(struct _StepMotor, motor)

uint16_t motor_step_ticks_per_second; // Maximum possible frequency
_StepMotor _step_motors;

#define ADJUSTMENT_STEP 2
#define STEPS_50_PERCENT (motor_step_ticks_per_second / ADJUSTMENT_STEP / 2 * 1.5)
#define STEPS_10_PERCENT (motor_step_ticks_per_second / ADJUSTMENT_STEP / 10 * 1.5)

static inline BOOL valid_frequency(uint16_t freq) {
    return freq > 0 && motor_step_ticks_per_second > 0 && freq <= motor_step_ticks_per_second;
}

static inline float frequency_to_ticks(uint16_t freq) {
    return (float) motor_step_ticks_per_second / (float) freq;
}

static void smoothMotorSpeedSetter(UnderlyingMotor motor, uint16_t speed, MotorDirection dir) {
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

    // Applt speed
    if (valid_frequency(speed))
        step->ticks_per_step = frequency_to_ticks(speed);
    else
        step->ticks_per_step = MOTOR->min_ticks_per_step;
}

_StepMotor allocateStepMotor() {
    _StepMotor motor = kalloc(sizeof(struct _StepMotor));
    if (!motor) return NULL;
    SmoothMotor smooth = newSmoothMotor(As(UnderlyingMotor, motor), smoothMotorSpeedSetter);
    if (!IsValid(smooth)) {
        free(motor);
        return NULL;
    }
    motor->smoothMotor = smooth;
    return motor;
}

StepMotor newStepMotor(Pin step, Pin dir, Pin enable, pos_t stepsPerTurn, StepMotorFlags flags) {
    if (stepsPerTurn == 0) return Invalid(StepMotor);
    _StepMotor motor;
    if (!occupyPinDirectly(step, PinStepMotor, EmptyConfigData) ||
            !occupyPinDirectly(dir, PinStepMotor, EmptyConfigData) ||
            (IsValid(enable) && !occupyPinDirectly(enable, PinStepMotor, EmptyConfigData)) ||
            !(motor = allocateStepMotor())) {
        deOccupyPin(step, PinStepMotor);
        deOccupyPin(dir, PinStepMotor);
        deOccupyPin(enable, PinStepMotor);
        return Invalid(StepMotor);
    }
    setPinOutput(step);
    setPinOutput(dir);
    setPinOutput(enable);

    motor->step = step;
    motor->dirPin = dir;
    motor->enable = enable;
    motor->full_turn = stepsPerTurn;
    motor->flags = flags;
    motor->next = NULL;

    // TODO need mechanism to set motor into well-defined initial position
    // or read the current position when starting
    motor->position = 0;

    LL_APPEND(_step_motors, motor);
    StepMotor stepMotor = As(StepMotor, motor);
    stepMotorSetMaxFrequency(stepMotor, motor_step_ticks_per_second); // Default: maximum possible frequency
    stepMotorStop(stepMotor);
    return stepMotor;
}

StepMotor destroyStepMotor(StepMotor motor) {
    if (IsValid(motor)) {
        deOccupyPin(MOTOR->step, PinStepMotor);
        deOccupyPin(MOTOR->dirPin, PinStepMotor);
        deOccupyPin(MOTOR->enable, PinStepMotor);
        MOTOR->smoothMotor = destroySmoothMotor(MOTOR->smoothMotor);
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
    if (!smoothMotorValid(MOTOR->smoothMotor)) return FALSE;
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

static void stopMotorNow(_StepMotor motor) {
    forceStopMotor(motor->smoothMotor);
}

void disableStepMotor(StepMotor motor) {
    stopMotorNow(MOTOR);
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

BOOL stepMotorSetMaxFrequency(StepMotor motor, uint16_t stepsPerSecond) {
    if (!IsValid(motor)) return FALSE;
    if (valid_frequency(stepsPerSecond)) {
        MOTOR->min_ticks_per_step = frequency_to_ticks(stepsPerSecond);
        MOTOR->max_frequency = stepsPerSecond;
        return TRUE;
    } else {
        MOTOR->min_ticks_per_step = 1;
        MOTOR->max_frequency = motor_step_ticks_per_second;
        return FALSE;
    }
}

uint16_t stepMotorGetMaxFrequency(StepMotor motor) {
    if (!IsValid(motor)) return 0;
    return MOTOR->max_frequency;
}

static void setMotorSpeedRegulation(_StepMotor motor, pos_t numSteps, MotorDirection dir) {
    if (numSteps <= 1 || dir == MotorStopped) {
        stopMotorNow(motor);
        return;
    }
    uint16_t speed = motor->max_frequency;
    if (numSteps <= STEPS_10_PERCENT)
        speed /= 10.0f;
    else if (numSteps <= STEPS_50_PERCENT)
        speed /= 2.0f;
    regulateSpeed(motor->smoothMotor, speed, dir);
}

void stepMotorStep(StepMotor motor, pos_t numSteps) {
    if (!IsValid(motor)) return;
    if (numSteps == 0) {
        stepMotorStop(motor);
    } else if (numSteps < 0) {
        MOTOR->leftover_steps = -numSteps;
        setMotorSpeedRegulation(MOTOR, -numSteps, MotorBackward);
    } else {
        MOTOR->leftover_steps = numSteps;
        setMotorSpeedRegulation(MOTOR, numSteps, MotorForward);
    }
    enableStepMotor(motor);
}

void stepMotorRotate(StepMotor motor, MotorDirection dir) {
    if (!IsValid(motor)) return;
    MOTOR->leftover_steps = -1;
    regulateSpeed(MOTOR->smoothMotor, MOTOR->max_frequency, dir);
    enableStepMotor(motor);
}

void stepMotorStop(StepMotor motor) {
    if (!IsValid(motor)) return;
    regulateStopMotor(MOTOR->smoothMotor);
    enableStepMotor(motor);
}

pos_t stepMotorPosition(StepMotor motor) {
    if (!IsValid(motor)) return 0;
    return MOTOR->position;
}

static void handle_motor_tick(_StepMotor motor) {
    if (motor->dir == MotorStopped)
        return;
    float ticks = motor->wait_ticks;
    if (ticks > 1) {
        motor->wait_ticks = ticks - 1.0f;
        return;
    } else {
        motor->wait_ticks += motor->ticks_per_step;
    }

    // Generate a pulse
    // TODO pulse too short?
    setPinOne(motor->step);
    // delay_us(1);
    setPinZero(motor->step);

    if (motor->dir == MotorForward)
        motor->position++;
    else
        motor->position--;

    if (motor->leftover_steps >= 0) {
        setMotorSpeedRegulation(motor, motor->leftover_steps, motor->dir);
        motor->leftover_steps--;
    }
}

void motor_step_tick() {
    motor_smooth_tick();

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
