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

// Comment out to generate pulses without extra delay
#define MICROSECOND_STEP_LENGTH 20

static freq_t global_max_frequency = 1000;
static const freq_t global_min_frequency = 100; // Should maybe be configurable
static float global_max_ticks_per_step = 10;
static float step_acceleration = 1.0; // Value added to/removed from ticks_per_step after every step.
_StepMotor _step_motors;

static inline BOOL valid_frequency(freq_t freq) {
    return freq > 0 && global_max_frequency > 0 && freq <= global_max_frequency;
}

static inline float frequency_to_ticks(freq_t freq) {
    return (float) global_max_frequency / (float) freq;
}

void setupStepMotors(ticks_t _ticks_per_second, ticks_t ticks_for_speedup) {
    freq_t previous_global = global_max_frequency;
    if (_ticks_per_second == 0) _ticks_per_second = 1;
    global_max_frequency = (freq_t) _ticks_per_second;
    global_max_ticks_per_step = frequency_to_ticks(global_min_frequency);
    step_acceleration = global_max_ticks_per_step / (float) ticks_for_speedup;

    // Fix the maximum speed for existing step motors
    float speed_change = (float) global_max_frequency / (float) previous_global;
    _StepMotor i = NULL;
    LL_FOREACH(_step_motors, i) {
        freq_t new_freq = (float) i->max_frequency * speed_change;
        stepMotorSetMaxFrequency(As(StepMotor, i), new_freq);
    }
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
    if (IsValid(enable))
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
    MOTOR->steps_for_slowdown = (global_max_ticks_per_step - 1.0) / step_acceleration;
    return res;
}

freq_t stepMotorGetMaxFrequency(StepMotor motor) {
    if (!IsValid(motor)) return 0;
    return MOTOR->max_frequency;
}

static inline void initiateMovement(_StepMotor motor, MotorDirection dir) {
    enableStepMotor(As(StepMotor, motor));
    if (dir == MotorStopped)
        motor->target_ticks_per_step = global_max_ticks_per_step;
    else
        motor->target_ticks_per_step = motor->min_ticks_per_step;
    motor->target_dir = dir;
    if (motor->dir == MotorStopped) {
        // If starting up, immediately start stepping
        motor->wait_ticks = 0;
        motor->dir = dir;
    }
}

void stepMotorStep(StepMotor motor, pos_t numSteps) {
    if (!IsValid(motor)) return;
    if (numSteps == 0) {
        stepMotorStop(motor);
        return;
    } else if (numSteps < 0) {
        initiateMovement(MOTOR, MotorBackward);
        MOTOR->leftover_steps = -numSteps;
    } else {
        initiateMovement(MOTOR, MotorForward);
        MOTOR->leftover_steps = numSteps;
    }
    MOTOR->counting_steps = TRUE;
}

void stepMotorRotate(StepMotor motor, MotorDirection dir) {
    if (!IsValid(motor)) return;
    initiateMovement(MOTOR, dir);
    MOTOR->counting_steps = FALSE;
}

void stepMotorStop(StepMotor motor) {
    if (!IsValid(motor)) return;
    initiateMovement(MOTOR, MotorStopped);
    MOTOR->counting_steps = FALSE;
}

void stepMotorForceStop(StepMotor motor) {
    if (!IsValid(motor)) return;
    enableStepMotor(motor);
    MOTOR->dir = MotorStopped;
    MOTOR->target_dir = MotorStopped;
    MOTOR->ticks_per_step = global_max_ticks_per_step;
    MOTOR->target_ticks_per_step = global_max_ticks_per_step;
    MOTOR->counting_steps = FALSE;
}

pos_t stepMotorPosition(StepMotor motor) {
    if (!IsValid(motor)) return 0;
    return MOTOR->position;
}

static BOOL do_motor_tick(_StepMotor motor) {
    float ticks = motor->wait_ticks;
    if (ticks > 1) {
        motor->wait_ticks = ticks - 1.0f;
        return FALSE;
    } else {
        motor->wait_ticks = ticks - 1.0f + motor->ticks_per_step;
        return TRUE;
    }
}

static BOOL do_motor_step(_StepMotor motor) {
    if (motor->dir == MotorStopped)
        return FALSE;

    // Generate a pulse
    setPinOne(motor->step);
#ifdef MICROSECOND_STEP_LENGTH
    delay_us(MICROSECOND_STEP_LENGTH);
#endif
    setPinZero(motor->step);

    if (motor->dir == MotorForward)
        motor->position++;
    else
        motor->position--;
    return TRUE;
}

static void handle_motor_tick(_StepMotor motor) {
    if (do_motor_tick(motor)) {
        BOOL stepped = do_motor_step(motor);

        if (stepped && motor->counting_steps) {
            if (motor->leftover_steps <= 1) {
                stepMotorForceStop(As(StepMotor, motor));
                return;
            } else if (motor->leftover_steps <= motor->steps_for_slowdown) {
                // TODO ticks between 1 and global_min_frequency always happen on minimal speed
                motor->target_ticks_per_step = global_max_ticks_per_step; // Minimal speed
            }
            motor->leftover_steps--;
        }

        // Originally copied from motor_smooth.c
        MotorDirection target_dir = motor->target_dir;
        float target_tps = motor->target_ticks_per_step;
        MotorDirection current_dir = motor->dir;
        speed_t current_tps = motor->ticks_per_step;
        float adjustment = step_acceleration;

        if (current_tps != target_tps || current_dir != target_dir) {
            if (current_dir != MotorStopped && current_dir != target_dir) {
                // Slowing down until we can change the direction.
                if (current_tps + adjustment > global_max_ticks_per_step) {
                    current_tps = global_max_ticks_per_step;
                    current_dir = target_dir;
                } else {
                    current_tps += adjustment;
                }
            } else {
                current_dir = target_dir;
                // Going in the correct direction already.
                if (current_tps > target_tps) { // Slowing down
                    if (current_tps - target_tps < adjustment) {
                        current_tps = target_tps;
                    } else {
                        current_tps -= adjustment;
                    }
                } else { // Speeding up
                    if (target_tps - current_tps < adjustment) {
                        current_tps = target_tps;
                    } else {
                        current_tps += adjustment;
                    }
                }
            }
            // After the calculations, update the actual values.
            motor->ticks_per_step = current_tps;
            motor->dir = current_dir;

            // Apply direction
            if (motor->dir != MotorStopped) {
                BOOL dirPinSet = motor->dir == MotorForward;
                if (motor->flags & StepMotorInverseDir)
                    dirPinSet = !dirPinSet;
                writePin(motor->dirPin, dirPinSet);
            }
        }
    }
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
