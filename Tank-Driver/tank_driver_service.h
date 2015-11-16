#ifndef _TANK_DRIVER_SERVICE_TWI_
#define _TANK_DRIVER_SERVICE_TWI_

#include <twi/rpc/client_functions.h>
#include "tank_motor.h"

typedef enum {
    TANK_DRIVER_SET_MOTOR = 30,
    TANK_DRIVER_GET_MOTOR_SPEED,
    TANK_DRIVER_EMERGENCY_STOP
} PROTOCOL_TANK_DRIVER_SERVICE; // Start at 30

typedef struct MotorStatus {
    uint16_t motorNum; // enum TankMotorNum
    uint16_t direction; // enum MotorDirection
    uint16_t speed;
} MotorStatus;

TWI_RPC_FUNCTION_VOID(tank_driver_set_motor, TANK_DRIVER_SET_MOTOR, MotorStatus)
TWI_RPC_FUNCTION(tank_driver_get_motor_speed, TANK_DRIVER_GET_MOTOR_SPEED, uint16_t /* enum TankMotorNum */, MotorStatus)
//TWI_RPC_FUNCTION(tank_driver_get_motor_speed, TANK_DRIVER_GET_MOTOR_SPEED, uint16_t /* enum TankMotorNum */, MotorStatus)
TWI_RPC_FUNCTION_NOTIFY(tank_driver_emergency_stop, TANK_DRIVER_EMERGENCY_STOP)

#endif // _TANK_DRIVER_SERVICE_TWI_
