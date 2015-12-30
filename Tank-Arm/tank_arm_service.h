#ifndef _TANK_ARM_SERVICE_TWI_
#define _TANK_ARM_SERVICE_TWI_

#include <twi/rpc/client_functions.h>
#include "example.h"

typedef enum {
    TANK_ARM_ROTATE = 40,
    TANK_ARM_STEP = 41,
    TANK_ARM_STOP = 42,
    TANK_ARM_POSITION = 43,
    TANK_ARM_ENABLE = 44,
    TANK_ARM_DISABLE = 45,
    TANK_ARM_SET_MAX = 46,
    TANK_ARM_GET_MAX = 47,
    TANK_ARM_SET_TIMER = 48,
    TANK_ARM_SET_DELAY = 49,

    TANK_ARM_GET_STATE = 50,
    TANK_ARM_CALIBRATE = 51,
    TANK_ARM_MOVE = 52,
    TANK_ARM_RECALIBRATE = 53
} PROTOCOL_TANK_ARM_SERVICE; // Start at 40

TWI_RPC_FUNCTION_VOID(tank_arm_rotate, TANK_ARM_ROTATE, uint16_t) // enum MotorDirection
TWI_RPC_FUNCTION_VOID(tank_arm_step, TANK_ARM_STEP, pos_t)
TWI_RPC_FUNCTION_NOTIFY(tank_arm_stop, TANK_ARM_STOP)
TWI_RPC_FUNCTION_NOARGS(tank_arm_position, TANK_ARM_POSITION, pos_t)
TWI_RPC_FUNCTION_NOTIFY(tank_arm_enable, TANK_ARM_ENABLE)
TWI_RPC_FUNCTION_NOTIFY(tank_arm_disable, TANK_ARM_DISABLE)
TWI_RPC_FUNCTION(tank_arm_set_max, TANK_ARM_SET_MAX, speed_t, uint16_t) // enum BOOL
TWI_RPC_FUNCTION_NOARGS(tank_arm_get_max, TANK_ARM_GET_MAX, speed_t)
TWI_RPC_FUNCTION_VOID(tank_arm_set_timer, TANK_ARM_SET_TIMER, uint16_t)
TWI_RPC_FUNCTION_VOID(tank_arm_set_delay, TANK_ARM_SET_DELAY, uint16_t) // enum StepMotorPulse

TWI_RPC_FUNCTION_NOTIFY(tank_arm_calibrate, TANK_ARM_CALIBRATE)
TWI_RPC_FUNCTION_NOTIFY(tank_arm_recalibrate, TANK_ARM_RECALIBRATE)
TWI_RPC_FUNCTION_NOARGS(tank_arm_state, TANK_ARM_GET_STATE, TankArmState)
TWI_RPC_FUNCTION_VOID(tank_arm_move, TANK_ARM_MOVE, arm_pos_t)

#endif // _TANK_ARM_SERVICE_TWI_
