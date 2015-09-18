#include "tank_arm_service.h"
#include <twi/rpc/server_handler_functions.h>

#include <devices/motor_step.h>

extern StepMotor tank_arm_step_motor;

static RpcHandlerStatus tank_arm_motor_handler(ArmMotorParameters *params, uint16_t size) {
    if (size != sizeof(ArmMotorParameters)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    TankArmDirection dir = params->dir;
    switch (dir) {
        case TankArmForward:
            stepMotorRotate(tank_arm_step_motor, StepMotorForward);
            break;
        case TankArmBackward:
            stepMotorRotate(tank_arm_step_motor, StepMotorBackward);
            break;
        case TankArmStop:
            stepMotorStop(tank_arm_step_motor);
            break;
        default:
            return TWI_RPC_handler_illegal_parameters;
    }
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_arm_motor_handler, TANK_ARM_MOTOR, ArmMotorParameters)
