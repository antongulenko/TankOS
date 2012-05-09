/*
 * tank_kernel_IO.c
 *
 * Created: 21.04.2012 18:57:59
 *  Author: Anton
 */ 

// Assemble the kernel-modules
#include <kernel/reset_condition.kernel.h>
#include "tank_led.kernel.h"
#include "tank_button.kernel.h"
#include "shared/base_before.kernel.h"
#include "tank_IO_server.kernel.h"
#include "shared/base_after.kernel.h"
