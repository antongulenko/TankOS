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

    printf("Stepping %i\n", *params);

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
