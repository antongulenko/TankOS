#ifndef KERNEL_H_
#define KERNEL_H_

#define USE_TWI

// #define USE_SCHEDULER
// #define USE_SMOOTH_MOTOR_INTERRUPT

// This file combines all APIs available on the tank.
// The modules included here should be analog to tank_kernel_MASTER.c.

#include "shared/kernel_base.h"
#include "shared/motor_smooth.h"
#include "tank_motor.h"

#ifdef USE_TWI
#include "shared/twi_bgx1.h"
#include "twi_tank_IO.h"
#endif

#endif