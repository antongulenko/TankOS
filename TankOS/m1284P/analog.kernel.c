/*
 * Created: 28.04.2012 11:29:04
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include "analog.h"
#include "port.h"

AnalogInput analog0, analog1, analog2, analog3, analog4, analog5, analog6, analog7;

void init_analog_m1284P() {
    #define INIT_ANALOG_INPUT_M1284P(number) \
	    analog##number = newAnalogInput(pinA##number, number);

	INIT_ANALOG_INPUT_M1284P(0)
	INIT_ANALOG_INPUT_M1284P(1)
	INIT_ANALOG_INPUT_M1284P(2)
	INIT_ANALOG_INPUT_M1284P(3)
	INIT_ANALOG_INPUT_M1284P(4)
	INIT_ANALOG_INPUT_M1284P(5)
	INIT_ANALOG_INPUT_M1284P(6)
	INIT_ANALOG_INPUT_M1284P(7)
}
KERNEL_INIT(init_analog_m1284P)
