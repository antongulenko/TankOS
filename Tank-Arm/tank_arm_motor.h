#ifndef __TANK_ARM_MOTOR_INC__
#define __TANK_ARM_MOTOR_INC__

#include <devices/motor_step.h>

extern StepMotor tank_arm_step_motor;

void setupTankArmMotor(uint16_t max_frequency);

#endif // __TANK_ARM_MOTOR_INC__
