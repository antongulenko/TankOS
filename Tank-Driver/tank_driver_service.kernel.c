#include "tank_driver_service.h"
#include <twi/rpc/server_handler_functions.h>

static RpcHandlerStatus tank_driver_set_motor_handler(MotorStatus *status, uint16_t size) {
    if (size != sizeof(MotorStatus)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    if (status->motorNum > MOTOR_RIGHT)
        return TWI_RPC_handler_illegal_parameters;
    if (status->direction > MotorStopped)
        return TWI_RPC_handler_illegal_parameters;
    SmoothMotor motor = TANK_MOTORS[status->motorNum];
    regulateSpeed(motor, status->speed, status->direction);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_VOID(tank_driver_set_motor_handler, TANK_DRIVER_SET_MOTOR, MotorStatus)

static RpcHandlerStatus tank_driver_get_motor_speed_handler(uint16_t *_motorNum, uint16_t size, TWIBuffer *resultBuffer) {
    if (size != sizeof(uint16_t)) {
        return TWI_RPC_handler_illegal_parameters;
    }
    uint16_t motorNum = *_motorNum;
    if (motorNum > MOTOR_RIGHT)
        return TWI_RPC_handler_illegal_parameters;
    Motor motor = TANK_BASE_MOTORS[motorNum];
    uint16_t speed = getSpeed(motor);
    MotorDirection direction = getDirection(motor);
    MotorStatus result = { motorNum, direction, speed };
    FILL_RESULT(resultBuffer, MotorStatus, result);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION(tank_driver_get_motor_speed_handler, TANK_DRIVER_GET_MOTOR_SPEED, uint16_t)

static RpcHandlerStatus tank_driver_emergency_stop_handler() {
    stopMotor(leftBaseMotor);
    stopMotor(rightBaseMotor);
    return TWI_RPC_handler_ok;
}
TWI_RPC_SERVER_FUNCTION_NOTIFY(tank_driver_emergency_stop_handler, TANK_DRIVER_EMERGENCY_STOP)
