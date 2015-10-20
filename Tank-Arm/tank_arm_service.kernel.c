#include "tank_arm_service.h"
#include <twi/rpc/server_handler_functions.h>

static RpcHandlerStatus tank_arm_rotate_handler(uint16_t *params, uint16_t size) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    MotorDirection dir = (MotorDirection) *params;
    if (dir > MotorStopped)
        return TWI_RPC_handler_illegal_parameters;
    stepMotorRotate(tank_arm_step_motor, dir);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_rotate_handler, TANK_ARM_ROTATE, uint16_t)

static RpcHandlerStatus tank_arm_step_handler(pos_t *params, uint16_t size) {
    if (size != sizeof(pos_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    stepMotorStep(tank_arm_step_motor, *params);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_step_handler, TANK_ARM_STEP, pos_t)

static RpcHandlerStatus tank_arm_stop_handler() {
    stepMotorStop(tank_arm_step_motor);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(tank_arm_stop_handler, TANK_ARM_STOP)

static RpcHandlerStatus tank_arm_position_handler(TWIBuffer *resultBuffer) {
    pos_t pos = stepMotorPosition(tank_arm_step_motor);
    FILL_RESULT(resultBuffer, pos_t, pos)
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(tank_arm_position_handler, TANK_ARM_POSITION)

static RpcHandlerStatus tank_arm_enable_handler() {
    enableStepMotor(tank_arm_step_motor);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(tank_arm_enable_handler, TANK_ARM_ENABLE)

static RpcHandlerStatus tank_arm_disable_handler() {
    disableStepMotor(tank_arm_step_motor);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(tank_arm_disable_handler, TANK_ARM_DISABLE)

static RpcHandlerStatus tank_arm_set_max_handler(freq_t *params, uint16_t size, TWIBuffer *resultBuffer) {
    if (size != sizeof(freq_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    BOOL res = stepMotorSetMaxFrequency(tank_arm_step_motor, *params);
    FILL_RESULT(resultBuffer, uint16_t, (uint16_t) res)
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION(tank_arm_set_max_handler, TANK_ARM_SET_MAX, freq_t)

static RpcHandlerStatus tank_arm_get_max_handler(TWIBuffer *resultBuffer) {
    freq_t res = stepMotorGetMaxFrequency(tank_arm_step_motor);
    FILL_RESULT(resultBuffer, freq_t, res)
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

extern uint32_t step_timer; // step_motor.c

static RpcHandlerStatus tank_arm_get_ticks_handler(TWIBuffer *resultBuffer) {
    uint32_t res = step_timer;
    FILL_RESULT(resultBuffer, uint32_t, res)
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOARGS(tank_arm_get_ticks_handler, TANK_ARM_GET_TICKS)
