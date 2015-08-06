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

DEFINE_HANDLE(AnalogInput)
typedef void (*AnalogCallbackFunction)(uint8_t value);

AnalogInput newAnalogInput(Pin inputPin, uint8_t pinNumber);
AnalogInput destroyAnalogInput(AnalogInput input);

// Start an analog conversion of the given input.
// Return immediately. When the conversion is finished, the callback-
// function will be invoked with the result.
// Return TRUE, if the conversion could be started.
// Return FALSE, if another conversion is currently running.
BOOL analogRead(AnalogInput input, AnalogCallbackFunction callback);

// Start an analog conversion of the given input.
// Enter a busy loop, polling for completion of the conversion.
// Return TRUE, if the conversion could be started.
// Return FALSE, if another conversion is currently running.
BOOL analogReadLoop(AnalogInput input, uint8_t *result);

#endif /* ANALOG_H_ */
