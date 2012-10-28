/*
 * analog.c
 *
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */

#include "analog.h"
#include <util/atomic.h>

// Used in analog.kernel.h
void (*analogCallbackFunction) (uint8_t result);

inline static BOOL conversionRunning() {
	// The ADSC (ADC Start Conversion) bit in the ADC Control/Status
	// Register A is set as long as an ADC conversion is running.
	return (ADCSRA & _BV(ADSC)) != 0;
}

static void startConversion(PAnalogInput input) {
	ATOMIC_BLOCK(ATOMIC_FORCEON) {
		uint8_t admux = ADMUX;
		// Set _only_ MUX4..0, the 5 LSB of ADMUX.
		// Mask away the 3 MSB. Painful bit-fiddling.
		admux |= ~0xE0 & input->pinNumber;
		admux &= 0xE0 | ~input->pinNumber;
		ADMUX = admux;
	}
	ADCSRA |= _BV(ADSC) | _BV(ADEN); // Start the conversion	
}

BOOL analogRead(PAnalogInput input, AnalogCallbackFunction callback) {
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		if (conversionRunning()) return FALSE;
	}
	analogCallbackFunction = callback;
	ADCSRA |= _BV(ADIE);
	startConversion(input);
	return TRUE;
}

BOOL analogReadLoop(PAnalogInput input, uint8_t *result) {
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		if (conversionRunning()) return FALSE;
	}
	// Disable interrupts, because we poll the result in a busy-loop
	ADCSRA &= ~_BV(ADIE);
	startConversion(input);
	while (conversionRunning()) ;
	// We only use 8-bit resolution, left-aligned. It's enough to 
	// read the high-register of the result.
	*result = ADCH;
	// Clear interrupt flag to make sure the interrupt does not fire later
	ADCSRA &= ~_BV(ADIF);
	return TRUE;	
}
