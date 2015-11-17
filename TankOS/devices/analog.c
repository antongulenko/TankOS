/*
 * Created: 26.04.2012 17:30:35
 *  Author: Anton
 */

#include "analog.h"
#include <kernel/klib.h>
#include <uthash/utlist.h>

typedef struct _Input {
	void *descriptor;
	uint16_t value;
	struct _Input *next;
} *_Input;

_Input inputs = NULL;
_Input currentConversion = NULL;

#define INPUT Get(struct _Input, input)

AnalogInput newAnalogInput(void *descriptor) {
	if (!descriptor) return Invalid(AnalogInput);
	_Input input = kalloc(sizeof(struct _Input));
	if (!input) return Invalid(AnalogInput);
    input->next = NULL;
    input->descriptor = descriptor;
    input->value = 0;
    LL_APPEND(inputs, input);
    return As(AnalogInput, input);
}

AnalogInput destroyAnalogInput(AnalogInput input) {
	if (IsValid(input)) {
		analogInput_impl_destroy(INPUT->descriptor);
	    LL_DELETE(inputs, INPUT);
	    free(INPUT);
	}
    return Invalid(AnalogInput);
}

BOOL analogInputValid(AnalogInput input) {
	return IsValid(input);
}

static void startNextConversion() {
	if (currentConversion == NULL) {
		// Conversion cycle is finished.
		return;
	}
	analogInput_impl_startConversion(currentConversion->descriptor);
}

void analogInputConversionFinished(uint16_t new_value) {
	if (currentConversion != NULL) {
		currentConversion->value = new_value;
		currentConversion = currentConversion->next;
		startNextConversion();
	}
}

uint16_t analogInputValue(AnalogInput input) {
	if (!IsValid(input)) return 0;
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
