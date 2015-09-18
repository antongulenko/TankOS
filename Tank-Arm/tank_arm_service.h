#ifndef _TANK_ARM_SERVICE_TWI_
#define _TANK_ARM_SERVICE_TWI_

#include <twi/rpc/client_functions.h>

typedef enum {
    TANK_ARM_MOTOR = 40
} PROTOCOL_TANK_ARM_SERVICE; // Start at 40

typedef enum {
    TankArmForward,
    TankArmBackward,
    TankArmStop,
    TankArmInvalid
} TankArmDirection;

typedef struct ArmMotorParameters {
    uint16_t dir; // enum TankArmDirection
} ArmMotorParameters;

TWI_RPC_FUNCTION_VOID(tank_arm_motor, TANK_ARM_MOTOR, ArmMotorParameters)

#endif // _TANK_ARM_SERVICE_TWI_
