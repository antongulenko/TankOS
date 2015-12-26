#include "tank_arm_service.h"
#include <twi/rpc/server_handler_functions.h>

static RpcHandlerStatus tank_arm_rotate_handler(uint16_t *params, uint16_t size) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    MotorDirection dir = (MotorDirection) *params;
    if (dir >= MotorInvalidDir)
        return TWI_RPC_handler_illegal_parameters;
    stepMotorRotate(tank_arm.motor, dir);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_rotate_handler, TANK_ARM_ROTATE, uint16_t)

static RpcHandlerStatus tank_arm_step_handler(pos_t *params, uint16_t size) {
    if (size != sizeof(pos_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    stepMotorStep(tank_arm.motor, *params);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_step_handler, TANK_ARM_STEP, pos_t)

static RpcHandlerStatus tank_arm_stop_handler() {
    stepMotorStop(tank_arm.motor);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(tank_arm_stop_handler, TANK_ARM_STOP)

static RpcHandlerStatus tank_arm_position_handler(TWIBuffer *resultBuffer) {
    pos_t pos = stepMotorPosition(tank_arm.motor);
    FILL_RESULT(resultBuffer, pos_t, pos)
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(tank_arm_position_handler, TANK_ARM_POSITION)

static RpcHandlerStatus tank_arm_enable_handler() {
    enableStepMotor(tank_arm.motor);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(tank_arm_enable_handler, TANK_ARM_ENABLE)

static RpcHandlerStatus tank_arm_disable_handler() {
    disableStepMotor(tank_arm.motor);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(tank_arm_disable_handler, TANK_ARM_DISABLE)

static RpcHandlerStatus tank_arm_set_max_handler(speed_t *params, uint16_t size, TWIBuffer *resultBuffer) {
    if (size != sizeof(speed_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    BOOL res = stepMotorSetMaxSpeed(tank_arm.motor, *params);
    FILL_RESULT(resultBuffer, uint16_t, (uint16_t) res)
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION(tank_arm_set_max_handler, TANK_ARM_SET_MAX, speed_t)

static RpcHandlerStatus tank_arm_get_max_handler(TWIBuffer *resultBuffer) {
    speed_t res = stepMotorGetMaxSpeed(tank_arm.motor);
    FILL_RESULT(resultBuffer, speed_t, res)
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(tank_arm_get_max_handler, TANK_ARM_GET_MAX)

static RpcHandlerStatus tank_arm_set_timer_handler(uint16_t *params, uint16_t size) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    uint16_t val = *params;
    setupTankArmMotor(val);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_set_timer_handler, TANK_ARM_SET_TIMER, uint16_t)

static RpcHandlerStatus tank_arm_set_delay_handler(uint16_t *params, uint16_t size) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    StepMotorPulse val = (StepMotorPulse) *params;
    if (val > StepMotorPulse100us) {
        return TWI_RPC_handler_illegal_parameters;
    }
    stepMotorPulse = val;
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_set_delay_handler, TANK_ARM_SET_DELAY, uint16_t)

static RpcHandlerStatus tank_arm_calibrate_handler() {
    calibrateTankArm(&tank_arm);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(tank_arm_calibrate_handler, TANK_ARM_CALIBRATE)

static RpcHandlerStatus tank_arm_recalibrate_handler() {
    recalibrateTankArm(&tank_arm);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(tank_arm_recalibrate_handler, TANK_ARM_RECALIBRATE)

static RpcHandlerStatus tank_arm_state_handler(TWIBuffer *resultBuffer) {
    TankArmState res;
    getTankArmState(&tank_arm, &res);
    FILL_RESULT(resultBuffer, TankArmState, res);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(tank_arm_state_handler, TANK_ARM_GET_STATE)

static RpcHandlerStatus tank_arm_move_handler(uint16_t *params, uint16_t size) {
    if (size != sizeof(arm_pos_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    arm_pos_t val = (arm_pos_t) *params;
    tankArmMove(&tank_arm, val);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_move_handler, TANK_ARM_MOVE, uint16_t)
