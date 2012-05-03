/*
 * led.kernel
 *
 * Created: 22.04.2012 15:38:52
 *  Author: Anton
 */ 

#ifndef _LED_KERNEL_
#define _LED_KERNEL_

#include "../kernel_init.h"
#include "led.h"

static void initLed(PLed led) {
	setPinOutput(led->pin);
}

#endif