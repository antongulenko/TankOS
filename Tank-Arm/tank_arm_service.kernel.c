#include "tank_arm_service.h"
#include <twi/rpc/server_handler_functions.h>


// =============== Chip-Global settings



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



// =============== Direct access to step motors



static RpcHandlerStatus tank_arm_rotate_handler(TankArmWordParameter *params, uint16_t size) {
    if (size != sizeof(TankArmWordParameter)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TANK_JOINT_NUM num = params->joint_num;
    if (num > TANK_JOINT_INVALID) {
        return TWI_RPC_handler_illegal_parameters;
    }

    MotorDirection dir = (MotorDirection) params->param;
    if (dir >= MotorInvalidDir)
        return TWI_RPC_handler_illegal_parameters;
    stepMotorRotate(TANK_JOINTS[num]->motor, dir);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_rotate_handler, TANK_ARM_ROTATE, TankArmWordParameter)

static RpcHandlerStatus tank_arm_step_handler(TankArmLongParameter *params, uint16_t size) {
    if (size != sizeof(TankArmLongParameter)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TANK_JOINT_NUM num = params->joint_num;
    if (num > TANK_JOINT_INVALID) {
        return TWI_RPC_handler_illegal_parameters;
    }

    stepMotorStep(TANK_JOINTS[num]->motor, params->param);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_step_handler, TANK_ARM_STEP, TankArmLongParameter)

static RpcHandlerStatus tank_arm_stop_handler(uint16_t *params, uint16_t size) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TANK_JOINT_NUM num = (TANK_JOINT_NUM) *params;
    if (num > TANK_JOINT_INVALID) {
        return TWI_RPC_handler_illegal_parameters;
    }

    stepMotorStop(TANK_JOINTS[num]->motor);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_stop_handler, TANK_ARM_STOP, uint16_t)

static RpcHandlerStatus tank_arm_position_handler(uint16_t *params, uint16_t size, TWIBuffer *resultBuffer) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TANK_JOINT_NUM num = (TANK_JOINT_NUM) *params;
    if (num > TANK_JOINT_INVALID) {
        return TWI_RPC_handler_illegal_parameters;
    }

    pos_t pos = stepMotorPosition(TANK_JOINTS[num]->motor);
    FILL_RESULT(resultBuffer, pos_t, pos)
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION(tank_arm_position_handler, TANK_ARM_POSITION, uint16_t)

static RpcHandlerStatus tank_arm_enable_handler(uint16_t *params, uint16_t size) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TANK_JOINT_NUM num = (TANK_JOINT_NUM) *params;
    if (num > TANK_JOINT_INVALID) {
        return TWI_RPC_handler_illegal_parameters;
    }

    enableStepMotor(TANK_JOINTS[num]->motor);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_enable_handler, TANK_ARM_ENABLE, uint16_t)

static RpcHandlerStatus tank_arm_disable_handler(uint16_t *params, uint16_t size) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TANK_JOINT_NUM num = (TANK_JOINT_NUM) *params;
    if (num > TANK_JOINT_INVALID) {
        return TWI_RPC_handler_illegal_parameters;
    }

    disableStepMotor(TANK_JOINTS[num]->motor);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_disable_handler, TANK_ARM_DISABLE, uint16_t)

static RpcHandlerStatus tank_arm_set_max_handler(TankArmWordParameter *params, uint16_t size, TWIBuffer *resultBuffer) {
    if (size != sizeof(TankArmWordParameter)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TANK_JOINT_NUM num = params->joint_num;
    if (num > TANK_JOINT_INVALID) {
        return TWI_RPC_handler_illegal_parameters;
    }

    BOOL res = stepMotorSetMaxSpeed(TANK_JOINTS[num]->motor, (speed_t) params->param);
    FILL_RESULT(resultBuffer, uint16_t, (uint16_t) res)
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION(tank_arm_set_max_handler, TANK_ARM_SET_MAX, TankArmWordParameter)

static RpcHandlerStatus tank_arm_get_max_handler(uint16_t *params, uint16_t size, TWIBuffer *resultBuffer) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TANK_JOINT_NUM num = (TANK_JOINT_NUM) *params;
    if (num > TANK_JOINT_INVALID) {
        return TWI_RPC_handler_illegal_parameters;
    }

    speed_t res = stepMotorGetMaxSpeed(TANK_JOINTS[num]->motor);
    FILL_RESULT(resultBuffer, speed_t, res)
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION(tank_arm_get_max_handler, TANK_ARM_GET_MAX, uint16_t)







// =============== Tank Joint Functionality





static RpcHandlerStatus tank_arm_calibrate_handler(uint16_t *params, uint16_t size) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TANK_JOINT_NUM num = (TANK_JOINT_NUM) *params;
    if (num > TANK_JOINT_INVALID) {
        return TWI_RPC_handler_illegal_parameters;
    }

    calibrateTankArm(TANK_JOINTS[num]);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_calibrate_handler, TANK_ARM_CALIBRATE, uint16_t)

static RpcHandlerStatus tank_arm_state_handler(uint16_t *params, uint16_t size, TWIBuffer *resultBuffer) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TANK_JOINT_NUM num = (TANK_JOINT_NUM) *params;
    if (num > TANK_JOINT_INVALID) {
        return TWI_RPC_handler_illegal_parameters;
    }

    TankArmState res;
    getTankArmState(TANK_JOINTS[num], &res);
    FILL_RESULT(resultBuffer, TankArmState, res);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION(tank_arm_state_handler, TANK_ARM_GET_STATE, uint16_t)

static RpcHandlerStatus tank_arm_move_handler(TankArmLongParameter *params, uint16_t size) {
    if (size != sizeof(TankArmLongParameter)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TANK_JOINT_NUM num = (TANK_JOINT_NUM) params->joint_num;
    if (num > TANK_JOINT_INVALID) {
        return TWI_RPC_handler_illegal_parameters;
    }

    encoder_pos_t val = (encoder_pos_t) params->param;
    tankArmMoveTo(TANK_JOINTS[num], val);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_move_handler, TANK_ARM_MOVE, TankArmLongParameter)

static RpcHandlerStatus tank_arm_move_stop_handler(uint16_t *params, uint16_t size) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TANK_JOINT_NUM num = (TANK_JOINT_NUM) *params;
    if (num > TANK_JOINT_INVALID) {
        return TWI_RPC_handler_illegal_parameters;
    }
    tankArmStop(TANK_JOINTS[num]);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_move_stop_handler, TANK_ARM_MOVE_STOP, uint16_t)
