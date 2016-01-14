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
    speed_t possible_max_speed;
    speed_t max_speed;

    // Motor state
    float ticks_between_steps;
    MotorDirection dir;

    // Operational state
    speed_t speed;
    float wait_ticks; // Ticks before next step. Incremented by ticks_per_step when reaches < 1
    pos_t position;

    // State for regulate*
    SmoothMotor smooth_motor;
    float regulate_ticks;

    StepMotorController controller;
    void *controllerUserData;

    // State for MotorController_Stepping
    steps_t steps_for_slowdown; // Maximum number of steps it can take to slow down from max to min speed
    steps_t leftover_steps;
} *_StepMotor;

#define MOTOR Get(struct _StepMotor, motor)

#define SPEED_FACTOR (60 * 10)
// One turn per second as minimal speed
#define global_min_speed (1 * SPEED_FACTOR)
static ticks_t global_ticks_per_second;
StepMotorPulse stepMotorPulse = StepMotorPulse1us;
_StepMotor _step_motors;

static void stepMotorSetUnderlyingSpeed(UnderlyingMotor underlying, speed_t speed, MotorDirection direction);

void setupStepMotors(ticks_t _global_ticks_per_second) {
    global_ticks_per_second = _global_ticks_per_second;
}

StepMotor newStepMotor(Pin step, Pin dir, Pin enable, steps_t stepsPerTurn, StepMotorFlags flags) {
    if (global_ticks_per_second == 0) return Invalid(StepMotor);
    if (stepsPerTurn == 0) return Invalid(StepMotor);
    _StepMotor motor = kalloc(sizeof(struct _StepMotor));
    if (!motor) return Invalid(StepMotor);
    motor->smooth_motor = newSmoothMotor(As(UnderlyingMotor, motor), stepMotorSetUnderlyingSpeed);
    if (!IsValid(motor->smooth_motor)) {
        free(motor);
        return Invalid(StepMotor);
    }
    smoothMotorSetMinSpeed(motor->smooth_motor, global_min_speed);

    if (!occupyPin(step, PinStepMotor) ||
            !occupyPin(dir, PinStepMotor) ||
            (IsValid(enable) && !occupyPin(enable, PinStepMotor))) {
        deOccupyPin(step, PinStepMotor);
        deOccupyPin(dir, PinStepMotor);
        deOccupyPin(enable, PinStepMotor);
        destroySmoothMotor(motor->smooth_motor);
        free(motor);
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
    motor->controller = NULL;
    motor->possible_max_speed = global_ticks_per_second / stepsPerTurn * SPEED_FACTOR;

    // TODO need mechanism to set motor into well-defined initial position
    // or read the current position when starting
    motor->position = 0;
    motor->wait_ticks = 0;
    motor->regulate_ticks = 0;

    LL_APPEND(_step_motors, motor);
    StepMotor stepMotor = As(StepMotor, motor);
    stepMotorSetMaxSpeed(stepMotor, motor->possible_max_speed);
    stepMotorForceStop(stepMotor);
    return stepMotor;
}

StepMotor destroyStepMotor(StepMotor motor) {
    if (IsValid(motor)) {
        deOccupyPin(MOTOR->step, PinStepMotor);
        deOccupyPin(MOTOR->dirPin, PinStepMotor);
        deOccupyPin(MOTOR->enable, PinStepMotor);
        MOTOR->smooth_motor = destroySmoothMotor(MOTOR->smooth_motor);
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
    if (!smoothMotorValid(MOTOR->smooth_motor)) return FALSE;
    return TRUE;
}

static StepMotorCommand MotorController_Default(MotorDirection currentDir, void *ignored) {
    if (currentDir == MotorStopped) {
        return STEP_CMD_FINISH;
    } else {
        return STEP_CMD_CONTINUE;
    }
}

static StepMotorCommand MotorController_Stepping(MotorDirection currentDir, void *userData) {
    _StepMotor motor = (_StepMotor) userData;
    if (motor->leftover_steps <= 0) {
        return STEP_CMD_FINISH;
    }
    motor->leftover_steps--;
    if (motor->leftover_steps <= motor->steps_for_slowdown) {
        return (StepMotorCommand) { STEP_CMD_FLAG_REGULATE | STEP_CMD_FLAG_SLOW, currentDir };
    } else {
        return STEP_CMD_CONTINUE;
    }
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

void stepMotorResetPosition(StepMotor motor, pos_t position) {
    MOTOR->position = position;
}

BOOL stepMotorSetMaxSpeed(StepMotor motor, speed_t speed) {
    if (!IsValid(motor)) return FALSE;
    BOOL res;
    if (speed > 0 && speed <= MOTOR->possible_max_speed) {
        MOTOR->max_speed = speed;
        res = TRUE;
    } else {
        MOTOR->max_speed = MOTOR->possible_max_speed;
        res = FALSE;
    }
    return res;
}

speed_t stepMotorGetMaxSpeed(StepMotor motor) {
    if (!IsValid(motor)) return 0;
    return MOTOR->max_speed;
}

void stepMotorControlledRotate(StepMotor motor, StepMotorController controller, void *userData) {
    if (!IsValid(motor)) return;
    MOTOR->controller = controller;
    MOTOR->controllerUserData = userData;
    if (MOTOR->dir == MotorStopped) {
        // If starting up, immediately start stepping
        MOTOR->wait_ticks = 0;
    }
    enableStepMotor(motor);
}

void stepMotorStep(StepMotor motor, pos_t numSteps) {
    if (!IsValid(motor)) return;
    if (numSteps == 0) {
        stepMotorStop(motor);
        return;
    } else if (numSteps < 0) {
        regulateSpeed(MOTOR->smooth_motor, MOTOR->max_speed, MotorBackward);
        MOTOR->leftover_steps = -numSteps;
    } else {
        regulateSpeed(MOTOR->smooth_motor, MOTOR->max_speed, MotorForward);
        MOTOR->leftover_steps = numSteps;
    }
    // Calculate number of steps to slow down from max to min speed
    // TODO
    MOTOR->steps_for_slowdown = 100;
    stepMotorControlledRotate(motor, MotorController_Stepping, (void*) MOTOR);
}

void stepMotorRotate(StepMotor motor, MotorDirection dir) {
    if (!IsValid(motor)) return;
    regulateSpeed(MOTOR->smooth_motor, MOTOR->max_speed, dir);
    stepMotorControlledRotate(motor, MotorController_Default, (void*) MOTOR);
}

void stepMotorStop(StepMotor motor) {
    if (!IsValid(motor)) return;
    regulateStopMotor(MOTOR->smooth_motor);
    stepMotorControlledRotate(motor, MotorController_Default, (void*) MOTOR);
}

void stepMotorForceStop(StepMotor motor) {
    if (!IsValid(motor)) return;
    enableStepMotor(motor);
    forceStopMotor(MOTOR->smooth_motor);
}

pos_t stepMotorPosition(StepMotor motor) {
    if (!IsValid(motor)) return 0;
    return MOTOR->position;
}

static void stepMotorSetUnderlyingSpeed(UnderlyingMotor motor, speed_t speed, MotorDirection direction) {
    MOTOR->dir = direction;
    MOTOR->speed = speed;
    float turns_per_sec = (float) speed / (float) SPEED_FACTOR;
    float ticks_per_sec = turns_per_sec * (float) MOTOR->full_turn;
    float ticks_between_steps;
    if (ticks_per_sec != 0) {
        ticks_between_steps = global_ticks_per_second / ticks_per_sec;
        if (ticks_between_steps <= 1) ticks_between_steps = 1.0;
    } else {
        ticks_between_steps = 1; // Value should not matter, motor stopped.
    }
    MOTOR->ticks_between_steps = ticks_between_steps;
}

static void stepMotorRegulateTick(_StepMotor motor) {
    float ticks = motor->regulate_ticks;
    if (ticks > 1) {
        motor->regulate_ticks = ticks - 1.0f;
    } else {
        // TODO lookup in table
        float acceleration = 1.0;
        motor->regulate_ticks = ticks - 1.0f + acceleration;
        smoothMotorTick(motor->smooth_motor);
    }
}

static BOOL do_motor_tick(_StepMotor motor) {
    float ticks = motor->wait_ticks;
    if (ticks > 1) {
        motor->wait_ticks = ticks - 1.0f;
        return FALSE;
    } else {
        motor->wait_ticks = ticks - 1.0f + motor->ticks_between_steps;
        return TRUE;
    }
}

static void do_motor_step(_StepMotor motor) {
    BOOL pinBefore = TRUE;
    BOOL pinAfter = FALSE;
    if (motor->flags && StepMotorInverseStep) {
        pinBefore = !pinBefore;
        pinAfter = !pinAfter;
    }

    // Generate a pulse
    writePin(motor->step, pinBefore);
    switch (stepMotorPulse) {
        case StepMotorPulse1us:
            delay_us(1);
            break;
        case StepMotorPulse10us:
            delay_us(10);
            break;
        case StepMotorPulse50us:
            delay_us(50);
            break;
        case StepMotorPulse100us:
            delay_us(100);
            break;
        case StepMotorPulseZero:
        default:
            break;
    }
    writePin(motor->step, pinAfter);

    if (motor->dir == MotorForward)
        motor->position++;
    else
        motor->position--;
}

static void handle_motor_tick(_StepMotor motor) {
    if (motor->controller == NULL) return;
    if (do_motor_tick(motor)) {
        // Query and evaluate controller
        StepMotorCommand cmd = motor->controller(motor->dir, motor->controllerUserData);
        if (cmd.flags & STEP_CMD_FLAG_FINISH) {
            motor->controller = NULL;
            forceStopMotor(motor->smooth_motor);
            return;
        }

        // Determine required speed
        // TODO ticks between 1 and global_min_frequency always happen on minimal speed
        speed_t speed;
        if (cmd.continueDir == MotorStopped) speed = 0;
        else if (cmd.flags & STEP_CMD_FLAG_SLOW) speed = global_min_speed;
        else speed = motor->max_speed;

        // Regulate the speed/direction if required
        if (cmd.flags & STEP_CMD_FLAG_FORCE) {
            forceMotorSpeed(motor->smooth_motor, speed, cmd.continueDir);
        } else if (cmd.flags & STEP_CMD_FLAG_REGULATE) {
            regulateSpeed(motor->smooth_motor, speed, cmd.continueDir);
        }
        stepMotorRegulateTick(motor);

        if (motor->dir != MotorStopped) {
            // Apply direction
            BOOL dirPinSet = motor->dir == MotorForward;
            if (motor->flags & StepMotorInverseDir)
                dirPinSet = !dirPinSet;
            writePin(motor->dirPin, dirPinSet);

            // Finally generate the actual pulse
            do_motor_step(motor);
        }
    } else {
        stepMotorRegulateTick(motor);
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
