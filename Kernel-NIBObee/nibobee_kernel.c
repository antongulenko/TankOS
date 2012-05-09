/*
 * nibobee_kernel.c
 *
 * Created: 21.04.2012 18:57:59
 *  Author: Anton
 */ 

// Assemble the kernel-modules
#include <kernel/reset_condition.kernel.h>
#include "nibobee_led.kernel.h"
#include "nibobee_button.kernel.h"
#include "nibobee_motor.kernel.h"
#include "shared/base_before.kernel.h"
#include "shared/motor_smooth.kernel.h"
#include <kernel/TWI/twi_rpc.kernel.h>
#include "shared/twi_bgx1.h"
#include "shared/base_after.kernel.h"
