/*
 * analog.c
 *
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */

#include "analog.h"

typedef struct {
	Pin pin;
	uint8_t pinNumber; // 0..7, corresponding e.g. to PinA0..PinA7
} _AnalogInput;

#define INPUT Get(_AnalogInput, input)

// Used in analog.kernel.c
void (*analogCallbackFunction) (uint8_t result);

AnalogInput newAnalogInput(Pin inputPin, uint8_t pinNumber) {
    _AnalogInput *input = malloc(sizeof(_AnalogInput));
    if (!input) return Invalid(AnalogInput);
    input->pin = inputPin;
    input->pinNumber = pinNumber;
    return As(AnalogInput, input);
}

AnalogInput destroyAnalogInput(AnalogInput input) {
    if (IsValid(input))
        free(INPUT);
    return Invalid(AnalogInput);
}

inline static BOOL conversionRunning() {
	// The ADSC (ADC Start Conversion) bit in the ADC Control/Status
	// Register A is set as long as an ADC conversion is running.
	return (ADCSRA & _BV(ADSC)) != 0;
}

static void startConversion(_AnalogInput *input) {
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

BOOL analogRead(AnalogInput input, AnalogCallbackFunction callback) {
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		if (conversionRunning()) return FALSE;
	}
	analogCallbackFunction = callback;
	ADCSRA |= _BV(ADIE);
	startConversion(INPUT);
	return TRUE;
}

BOOL analogReadLoop(AnalogInput input, uint8_t *result) {
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		if (conversionRunning()) return FALSE;
	}
	// Disable interrupts, because we poll the result in a busy-loop
	ADCSRA &= ~_BV(ADIE);
	startConversion(INPUT);
	while (conversionRunning()) ;
	// We only use 8-bit resolution, left-aligned. It's enough to
	// read the high-register of the result.
	*result = ADCH;
	// Clear interrupt flag to make sure the interrupt does not fire later
	ADCSRA &= ~_BV(ADIF);
	return TRUE;
}
