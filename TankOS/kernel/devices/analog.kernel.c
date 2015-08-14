/*
 * analog.kernel
 *
 * Created: 28.04.2012 11:29:04
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include "analog.h"

extern AnalogCallbackFunction analogCallbackFunction;

INTERRUPT_HANDLER(ADC_vect) {
	// We only use 8-bit resolution, left-aligned. It's enough to
	// read the high-register of the result.
	if (analogCallbackFunction)
		analogCallbackFunction(ADCH);
}
