/*
 * tank_kernel_MASTER.c
 *
 * Created: 21.04.2012 18:57:59
 *  Author: Anton
 */ 

// Assemble the kernel-modules
#include <kernel/reset_condition.kernel.h>
#include "shared/base_before.kernel.h"
#include "tank_motor.kernel.h"
#define MOTOR_ADJUSTMENT_STEP 35 // Approx 1 second from min to max
#include "shared/motor_smooth.kernel.h"

#ifdef USE_TWI
#include <kernel/TWI/twi_rpc.kernel.h> // TWI_Slave not defined.
#include "shared/twi_bgx1.h"
#include "twi_tank_IO.h"
#include "shared/base_after.kernel.h"
#endif
