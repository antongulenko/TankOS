#ifndef ___test_arm_inc___
#define ___test_arm_inc___

#include <devices/motor_step.h>
#include <arm.h>
#include <mocks/port.h>

extern struct TankArm tank_joint;

#define PORT_PIN_CHANGE 0
#define FRONT_PIN_CHANGE 4
#define BACK_PIN_CHANGE 5
#define ENC_A_PIN_CHANGE 6
#define ENC_B_PIN_CHANGE 7

void setupTankArmMotor(uint16_t freq);

void init_test_tank_arm();
void tear_down_test_tank_arm();

#endif // ___test_arm_inc___
