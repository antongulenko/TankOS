#include "motor_step.h"
#include "motor_smooth.h"
#include <kernel/klib.h>
#include <uthash/utlist.h>

typedef struct _StepMotor {
    struct _StepMotor *next;
    Pin step;
    Pin dirPin;
    Pin enable;
    steps_t full_turn;
    StepMotorFlags flags;
    SmoothMotor smoothMotor;

    // Config
    freq_t max_frequency;
    float min_ticks_per_step;
    steps_t steps_from_max_to_min; // Maximum number of steps it can take to slow down to minimum speed

    // State controlled by SmoothMotor (smoothMotorSpeedSetter)
    float ticks_per_step; // Represents the current speed/frequency
    MotorDirection dir;

    // Operational state
    float wait_ticks; // Incremented by ticks_per_step when reaches < 1
    pos_t position;
    BOOL counting_steps;
    steps_t leftover_steps;
} *_StepMotor;

#define MOTOR Get(struct _StepMotor, motor)

#define SPEED_LEVELS 10
static freq_t global_max_frequency;
static freq_t global_min_frequency;
_StepMotor _step_motors;

// Control how often motor_smooth_tick is called
static ticks_t ticks_per_smooth_tick;
static ticks_t ticks_until_next_smooth_tick; // Reset to ticks_per_smooth_tick

void setupStepMotors(ticks_t _ticks_per_second, ticks_t ticks_for_highspeed) {
    if (_ticks_per_second == 0) _ticks_per_second = 1;
    global_max_frequency = _ticks_per_second;
    global_min_frequency = _ticks_per_second / SPEED_LEVELS;
    ticks_per_smooth_tick = ticks_for_highspeed / (SPEED_LEVELS - 1);
    ticks_until_next_smooth_tick = 0;
}

static inline BOOL valid_frequency(freq_t freq) {
    return freq > 0 && global_max_frequency > 0 && freq <= global_max_frequency;
}

static inline float frequency_to_ticks(freq_t freq) {
    return (float) global_max_frequency / (float) freq;
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

    // Apply speed
    if (valid_frequency(speed))
        step->ticks_per_step = frequency_to_ticks(speed);
    else
        step->ticks_per_step = MOTOR->min_ticks_per_step;
    if (step->wait_ticks > step->ticks_per_step)
        step->wait_ticks = step->ticks_per_step;
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

StepMotor newStepMotor(Pin step, Pin dir, Pin enable, steps_t stepsPerTurn, StepMotorFlags flags) {
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
    smoothMotorSetStep(motor->smoothMotor, global_min_frequency);
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
    if (valid_frequency(stepsPerSecond)) {
        MOTOR->min_ticks_per_step = frequency_to_ticks(stepsPerSecond);
        MOTOR->max_frequency = stepsPerSecond;
        MOTOR->steps_from_max_to_min = ticks_per_smooth_tick * (SPEED_LEVELS - 1) / MOTOR->min_ticks_per_step;
        return TRUE;
    } else {
        MOTOR->min_ticks_per_step = 1;
        MOTOR->max_frequency = global_max_frequency;
        MOTOR->steps_from_max_to_min = ticks_per_smooth_tick * (SPEED_LEVELS - 1);
        return FALSE;
    }
}

freq_t stepMotorGetMaxFrequency(StepMotor motor) {
    if (!IsValid(motor)) return 0;
    return MOTOR->max_frequency;
}

static inline void regulateStepMotorSpeed(_StepMotor motor, steps_t leftover_steps, BOOL forward) {
    uint16_t speed;
    // TODO running steps between 0 and steps_from_max_to_min will always happen on minimal frequency
    if (leftover_steps > motor->steps_from_max_to_min) {
        speed = motor->max_frequency;
    } else {
        speed = global_min_frequency;
    }
    if (forward) {
        regulateSpeed(motor->smoothMotor, speed, MotorForward);
    } else {
        regulateSpeed(motor->smoothMotor, speed, MotorBackward);
    }
    motor->counting_steps = TRUE;
    motor->leftover_steps = leftover_steps;
}

static inline void initiateMovement(StepMotor motor) {
    // Make sure next tick evaluates both smooth_motor and step_motor
    enableStepMotor(motor);
    MOTOR->wait_ticks = 0;
    ticks_until_next_smooth_tick = 0;
}

void stepMotorStep(StepMotor motor, pos_t numSteps) {
    if (!IsValid(motor)) return;
    if (numSteps == 0) {
        stepMotorStop(motor);
        return;
    } else if (numSteps < 0) {
        regulateStepMotorSpeed(MOTOR, -numSteps, FALSE);
    } else {
        regulateStepMotorSpeed(MOTOR, numSteps, TRUE);
    }
    initiateMovement(motor);
}

void stepMotorRotate(StepMotor motor, MotorDirection dir) {
    if (!IsValid(motor)) return;
    MOTOR->counting_steps = FALSE;
    regulateSpeed(MOTOR->smoothMotor, MOTOR->max_frequency, dir);
    initiateMovement(motor);
}

void stepMotorStop(StepMotor motor) {
    if (!IsValid(motor)) return;
    MOTOR->counting_steps = FALSE;
    regulateStopMotor(MOTOR->smoothMotor);
    initiateMovement(motor);
}

void stepMotorForceStop(StepMotor motor) {
    if (!IsValid(motor)) return;
    MOTOR->counting_steps = FALSE;
    forceStopMotor(MOTOR->smoothMotor);
    initiateMovement(motor);
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
        motor->wait_ticks = ticks - 1.0f + motor->ticks_per_step;
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

    if (motor->counting_steps) {
        if (motor->leftover_steps <= 1 || motor->dir == MotorStopped) {
            stepMotorForceStop(As(StepMotor, motor));
            return;
        }
        regulateStepMotorSpeed(motor, motor->leftover_steps - 1, motor->dir == MotorForward);
    }
}

void motor_step_tick() {
    if (ticks_until_next_smooth_tick <= 1) {
        ticks_until_next_smooth_tick = ticks_per_smooth_tick;
        motor_smooth_tick();
    } else {
        ticks_until_next_smooth_tick--;
    }

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
