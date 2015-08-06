/*
 * analog.c
 *
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */

#include "analog.h"

#define INPUT Cast(Pin, input)

// Used in analog.kernel.c
void (*analogCallbackFunction) (uint8_t result);

BOOL registerAnalogInputPin(Pin pin, uint8_t pinNumber) {
    #pragma GCC diagnostic ignored "-Wint-to-pointer-cast"
    return registerPinConfig(pin, PinAnalogInput, (void*) (long) pinNumber);
}

AnalogInput newAnalogInput(Pin inputPin) {
    if (!occupyPin(inputPin, PinAnalogInput))
        return Invalid(AnalogInput);
    return Cast(AnalogInput, inputPin);
}

AnalogInput destroyAnalogInput(AnalogInput input) {
    // TODO - de-occupy pin.
    return Invalid(AnalogInput);
}

inline static BOOL conversionRunning() {
	// The ADSC (ADC Start Conversion) bit in the ADC Control/Status
	// Register A is set as long as an ADC conversion is running.
	return (ADCSRA & _BV(ADSC)) != 0;
}

static void startConversion(Pin input) {
    #pragma GCC diagnostic ignored "-Wpointer-to-int-cast"
    uint8_t pinNum = (uint8_t) pinConfigData(input, PinAnalogInput);
	ATOMIC_BLOCK(ATOMIC_FORCEON) {
		uint8_t admux = ADMUX;
		// Set _only_ MUX4..0, the 5 LSB of ADMUX.
		// Mask away the 3 MSB. Painful bit-fiddling.
		admux |= ~0xE0 & pinNum;
		admux &= 0xE0 | ~pinNum;
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
