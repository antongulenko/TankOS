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

void init_analog() {
	// Initialize the ADC settings. See description in analog.h.
	ADMUX =
		_BV(REFS0)	  // REFS1..0 = 0b01 -> AVCC as reference voltage.
		| _BV(ADLAR); // Left-align the result so that reading ADCH
					  // is enough to get 8-bit resolution.

	ADCSRA =
		_BV(ADEN) | _BV(ADIE) // Enable ADC and ADC-Interrupt

		// Prescaler: ADPS2..0. For 10-bit resolution, 0b111 is
		// required. We only need 8-bit resolution, use 0b101
		| _BV(ADPS2) | _BV(ADPS0);

	ADCSRB = 0; // No automatic trigger source used.
}
KERNEL_INIT(init_analog)
