/*
 * Created: 28.04.2012 11:29:04
 *  Author: Anton
 */

#include <platform/kernel_init.h>
#include "analog.h"

void analogInputInterruptValue(uint16_t new_value); // From analog.c

INTERRUPT_HANDLER(ADC_vect) {
	// Read the low byte first to make sure they belong to the same conversion.
	uint16_t new_value = (uint16_t) ADCL;
	new_value |= MAKE_WORD(ADCH, 0x0);
    analogInputInterruptValue(new_value);
}
