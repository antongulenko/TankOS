/*
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */

#include "analog.h"

#define PIN Cast(Pin, input)

// Used in analog.kernel.c
void (*analogCallbackFunction) (uint8_t result);

BOOL registerAnalogInputPin(Pin pin, uint8_t pinNumber) {
    ConfigData data = { pinNumber, 0, 0, 0 };
    return registerPinConfig(pin, PinAnalogInput, data);
}

AnalogInput newAnalogInput(Pin inputPin) {
    if (!occupyPin(inputPin, PinAnalogInput))
        return Invalid(AnalogInput);
    return Cast(AnalogInput, inputPin);
}

AnalogInput destroyAnalogInput(AnalogInput input) {
    if (analogInputValid(input))
        deOccupyPin(PIN, PinAnalogInput);
    return Invalid(AnalogInput);
}

BOOL analogInputValid(AnalogInput input) {
    if (!IsValid(input))
        return FALSE;
    if (pinOccupation(PIN) != PinAnalogInput)
        return FALSE;
    return TRUE;
}

inline static BOOL conversionRunning() {
	// The ADSC (ADC Start Conversion) bit in the ADC Control/Status
	// Register A is set as long as an ADC conversion is running.
	return (ADCSRA & _BV(ADSC)) != 0;
}

BOOL void startConversion(Pin input) {
    ConfigData *data = pinConfigData(input, PinAnalogInput);
    if (data == NULL) return FALSE;
    uint8_t pinNum = data->data[0];
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		// Set only MUX4..0, the 5 LSB of ADMUX.
        ADMUX = (ADMUX & 0xE0) | pinNum;
	}
	ADCSRA |= _BV(ADSC) | _BV(ADEN); // Start the conversion
    return TRUE;
}

BOOL analogRead(AnalogInput input, AnalogCallbackFunction callback) {
    if (!analogInputValid(input)) return FALSE;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		if (conversionRunning()) return FALSE;
	}
	analogCallbackFunction = callback;
	ADCSRA |= _BV(ADIE);
	return startConversion(PIN);
}

BOOL analogReadLoop(AnalogInput input, uint8_t *result) {
    if (!analogInputValid(input)) return FALSE;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		if (conversionRunning()) return FALSE;
	}
	// Disable interrupts, because we poll the result in a busy-loop
	ADCSRA &= ~_BV(ADIE);
	if (!startConversion(PIN))
        return FALSE;
	while (conversionRunning()) ;
	// We only use 8-bit resolution, left-aligned. It's enough to
	// read the high-register of the result.
	*result = ADCH;
	// Clear interrupt flag to make sure the interrupt does not fire later
	ADCSRA &= ~_BV(ADIF);
	return TRUE;
}
