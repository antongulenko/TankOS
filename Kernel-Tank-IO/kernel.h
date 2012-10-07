#ifndef KERNEL_H_
#define KERNEL_H_

// #define USE_TWI

// These 3 defines control the io-processor operation, see ../Main-Tank-IO/Main.c.h
// #define TWI_COMMAND_QUEUE
// #define TWI_COMMAND_QUEUE_SLEEP
// #define FORCE_BUTTON_PIN_CHANGE_INTERRUPTS

// #define USE_SCHEDULER

#include "shared/kernel_base.h"
#include "tank_button.h"
#include "tank_led.h"

#ifdef USE_TWI
#include "shared/twi_bgx1.h"

// Include, even if the according .kernel.h file is not in the kernel.
#include <kernel/TWI/commandQueueExecuter.h>
#endif

#endif
