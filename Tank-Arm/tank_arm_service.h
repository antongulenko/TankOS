#ifndef _TANK_ARM_SERVICE_TWI_
#define _TANK_ARM_SERVICE_TWI_

#include <twi/rpc/client_functions.h>
#include "example.h"

#define TANK_JOINTS ((TankArm[]) { &tank_socket, &tank_joint })

typedef enum {
    TANK_SOCKET = 0,
    TANK_JOINT = 1,
    TANK_JOINT_INVALID = 2
} TANK_JOINT_NUM;

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
    TANK_ARM_MOVE = 52
} PROTOCOL_TANK_ARM_SERVICE; // Start at 40

typedef struct TankArmWordParameter {
    uint16_t joint_num; // enum TANK_JOINT_NUM
    uint16_t param; // Actual type depends on function
} TankArmWordParameter;

typedef struct TankArmLongParameter {
    uint16_t joint_num; // enum TANK_JOINT_NUM
    pos_t param;
} __attribute__((packed)) TankArmLongParameter;

// Chip-Global settings
TWI_RPC_FUNCTION_VOID(tank_arm_set_timer, TANK_ARM_SET_TIMER, uint16_t) // uint16_t
TWI_RPC_FUNCTION_VOID(tank_arm_set_delay, TANK_ARM_SET_DELAY, uint16_t) // enum StepMotorPulse

// Direct access to step motor
TWI_RPC_FUNCTION_VOID(tank_arm_rotate, TANK_ARM_ROTATE, TankArmWordParameter) // param: enum MotorDirection
TWI_RPC_FUNCTION_VOID(tank_arm_step, TANK_ARM_STEP, TankArmLongParameter)
TWI_RPC_FUNCTION_VOID(tank_arm_stop, TANK_ARM_STOP, uint16_t) // enum TANK_JOINT_NUM
TWI_RPC_FUNCTION(tank_arm_position, TANK_ARM_POSITION, uint16_t, pos_t) // enum TANK_JOINT_NUM
TWI_RPC_FUNCTION_VOID(tank_arm_enable, TANK_ARM_ENABLE, uint16_t) // enum TANK_JOINT_NUM
TWI_RPC_FUNCTION_VOID(tank_arm_disable, TANK_ARM_DISABLE, uint16_t) // enum TANK_JOINT_NUM
TWI_RPC_FUNCTION(tank_arm_set_max, TANK_ARM_SET_MAX, TankArmWordParameter, uint16_t) // param: speed_t, result: enum BOOL
TWI_RPC_FUNCTION(tank_arm_get_max, TANK_ARM_GET_MAX, uint16_t, speed_t) // enum TANK_JOINT_NUM

// Tank-Joint functionality
TWI_RPC_FUNCTION_VOID(tank_arm_calibrate, TANK_ARM_CALIBRATE, uint16_t) // enum TANK_JOINT_NUM
TWI_RPC_FUNCTION(tank_arm_state, TANK_ARM_GET_STATE, uint16_t, TankArmState) // enum TANK_JOINT_NUM
TWI_RPC_FUNCTION_VOID(tank_arm_move, TANK_ARM_MOVE, TankArmLongParameter) // param: encoder_pos_t

#endif // _TANK_ARM_SERVICE_TWI_
