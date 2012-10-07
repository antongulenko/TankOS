/*
 * tank_kernel_IO.c
 *
 * Created: 21.04.2012 18:57:59
 *  Author: Anton
 */ 

// Assemble the kernel-modules
#include <kernel/reset_condition.kernel.h>
#include "shared/base_before.kernel.h"
#include "tank_led.kernel.h"
#include "tank_button.kernel.h"

#ifdef USE_TWI
#include "tank_IO_server.kernel.h"
#endif

#include "shared/base_after.kernel.h"

// Set TWI-interface online, after all other initialization.
// Function defined in tank_IO_server.kernel.h
void tankIO_system_initialized() __attribute__((weak));
KERNEL_INIT(tankIO_system_initialized)

#ifdef TWI_COMMAND_QUEUE
#ifdef TWI_COMMAND_QUEUE_SLEEP
	#include <kernel/TWI/commandQueueExecuter_sleep.kernel.h>
#else
	#include <kernel/TWI/commandQueueExecuter_loop.kernel.h>
#endif
#endif
