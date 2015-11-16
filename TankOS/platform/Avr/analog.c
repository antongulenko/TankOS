/*
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */

#include "analog.h"
#include <kernel/klib.h>
#include <uthash/utlist.h>

typedef struct _Input {
	Pin pin;
	uint16_t value;
	struct _Input *next;
} *_Input;

_Input inputs = NULL;
_Input currentConversion = NULL;

#define INPUT Get(struct _Input, input)

BOOL registerAnalogInputPin(Pin pin, uint8_t pinNumber) {
    ConfigData data = { pinNumber, 0, 0, 0 };
    return registerPinConfig(pin, PinAnalogInput, data);
}

AnalogInput newAnalogInput(Pin inputPin) {
	_Input input = kalloc(sizeof(struct _Input));
	if (!input) return Invalid(AnalogInput);
    if (!occupyPin(inputPin, PinAnalogInput)) {
    	free(input);
        return Invalid(AnalogInput);
    }
    LL_APPEND(inputs, input);
    input->pin = inputPin;
    input->value = 0;
    return As(AnalogInput, input);
}

AnalogInput destroyAnalogInput(AnalogInput input) {
	if (IsValid(input)) {
	    if (analogInputValid(input)) {
	        deOccupyPin(INPUT->pin, PinAnalogInput);
	    }
	    LL_DELETE(inputs, INPUT);
	    free(INPUT);
	}
    return Invalid(AnalogInput);
}

BOOL analogInputValid(AnalogInput input) {
    if (!IsValid(input))
        return FALSE;
    if (pinOccupation(INPUT->pin) != PinAnalogInput)
        return FALSE;
    return TRUE;
}

static void startNextConversion() {
	if (currentConversion == NULL) {
		// Conversion cycle is finished.
		return;
	}
	Pin inputPin = currentConversion->pin;
    ConfigData *data = pinConfigData(inputPin, PinAnalogInput);
    if (data == NULL) return;
    uint8_t pinNum = data->data[0];
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		// Set only MUX4..0, the 5 LSB of ADMUX.
        ADMUX = (ADMUX & 0xE0) | pinNum;
	}
	ADCSRA |= _BV(ADEN) | _BV(ADSC) | _BV(ADIE); // Start the conversion with interrupt enabled
}

// Must be called from the ADC interrupt handler, after reading the ADCH/ADCL registers.
void analogInputInterruptValue(uint16_t new_value) {
	if (currentConversion != NULL) {
		currentConversion->value = new_value;
		currentConversion = currentConversion->next;
		startNextConversion();
	}
}

uint16_t analogInputValue(AnalogInput input) {
	return INPUT->value;
}

void analogInputReadValues() {
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		if (currentConversion == NULL) {
			// No conversion cycle running, we can start a new one
			currentConversion = inputs;
			startNextConversion();
		}
	}
}

BOOL analogInputCycleRunning() {
	return currentConversion != NULL;
}

void __vector_ANALOG_INPUT_TIMER_INTERRUPT() INTERRUPT_FUNCTION;
void __vector_ANALOG_INPUT_TIMER_INTERRUPT() {
	analogInputReadValues();
}
