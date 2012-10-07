/*
 * nibobee_kernel.c
 *
 * Created: 21.04.2012 18:57:59
 *  Author: Anton
 */ 

// #define DEBUG_TWI

#ifdef DEBUG_TWI
#define TWI_DEBUG_ERROR(error_code) blinkByte(AllLeds, YellowLeds, error_code);
#define TWI_DEBUG_BYTE_SENT(data) blinkByte(AllLeds, LeftLeds, data);
#define TWI_DEBUG_BYTE_RECEIVED(data) blinkByte(AllLeds, RightLeds, data);
#define TWI_DEBUG_INTERRUPT(status) blinkByte(AllLeds, RedLeds, status);
#endif

// Assemble the kernel-modules
#include <kernel/reset_condition.kernel.h>
#include "shared/base_before.kernel.h"
#include "nibobee_led.kernel.h"
#include "nibobee_button.kernel.h"
#include "nibobee_motor.kernel.h"
#include "shared/motor_smooth.kernel.h"
#include <kernel/TWI/twi_rpc.kernel.h>
#include "shared/twi_bgx1.h"
#include "shared/base_after.kernel.h"
