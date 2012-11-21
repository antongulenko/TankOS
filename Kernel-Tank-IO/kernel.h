#ifndef KERNEL_H_
#define KERNEL_H_

#include <kernel_base.h>
#include "tank_button.h"
#include "tank_led.h"

#ifdef USE_TWI
#include <twi_bgx1.h>
#include <kernel/TWI/commandQueueExecuter.h>
#endif

#endif