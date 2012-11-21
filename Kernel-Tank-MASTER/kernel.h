#ifndef KERNEL_H_
#define KERNEL_H_

#include <kernel_base.h>
#include "tank_motor.h"
#include <motor_smooth.h>

#ifdef USE_TWI
#include <twi_bgx1.h>
#include <twi_tank_IO.h>
#endif

#endif