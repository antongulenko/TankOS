/*
 * analog.h
 *
 * Created: 26.04.2012 17:30:26
 *  Author: Anton
 */

#ifndef ANALOG_H_
#define ANALOG_H_

#include "port.h"
#include <tank_os_common.h>

// Interface for single-ended analog input pins.
// No differential analog input supported.
// The original 10-bit resolution is trimmed to 8 bit for simplicity.
// This also allows for a greater clock-frequency of the ADC.
// Values are read on-demand, no free-running mode.
// Both interrupt-driven and looping reads are supported.

typedef void (*AnalogCallbackFunction)(uint8_t value);

typedef struct {
	Pin pin;
	uint8_t pinNumber; // 0..7, corresponding e.g. to PinA0..PinA7
} AnalogInput, *PAnalogInput;

// Start an analog conversion of the given input.
// Return immediately. When the conversion is finished, the callback-
// function will be invoked with the result.
// Return TRUE, if the conversion could be started.
// Return FALSE, if another conversion is currently running.
BOOL analogRead(PAnalogInput input, AnalogCallbackFunction callback);

// Start an analog conversion of the given input.
// Enter a busy loop, polling for completion of the conversion.
// Return TRUE, if the conversion could be started.
// Return FALSE, if another conversion is currently running.
BOOL analogReadLoop(PAnalogInput input, uint8_t *result);

#define DEFINE_ANALOG_INPUT(analogInputName) extern const PAnalogInput analogInputName;

#define INIT_ANALOG_INPUT(analogInputName, inputPin, pinNumber)	\
	analogInputName##_ = (AnalogInput) { inputPin, pinNumber };

#define DEFINE_ANALOG_INPUT_IMPL(analogInputName)				\
	AnalogInput analogInputName##_;								\
	const PAnalogInput analogInputName = &analogInputName##_;

#endif /* ANALOG_H_ */
