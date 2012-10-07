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

// The resolution is only 471, so from min to max in ca. half a second.
#define MOTOR_ADJUSTMENT_STEP 1 
#ifdef USE_SMOOTH_MOTOR_INTERRUPT
#include "shared/motor_smooth_interrupt.kernel.h"
#else
#include "shared/motor_smooth.kernel.h"
#endif

#ifdef USE_TWI
#include <kernel/TWI/twi_rpc.kernel.h> // TWI_Slave not defined.
#include "shared/twi_bgx1.h"
#include "twi_tank_IO.h"
#include "shared/base_after.kernel.h"
#endif
