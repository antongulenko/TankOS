/*
 * Created: 26.04.2012 17:30:26
 *  Author: Anton
 */

#ifndef ANALOG_H_
#define ANALOG_H_

#include <tank_os_common.h>

// Interface for single-ended analog input pins.
// No differential analog input supported.
// 10-bit results are given as 16-bit values.
// After creating all inputs, analogInputReadValues() can be called to cycle through all inputs 
// and read all values. Values are 
// analogInputReadValues() can be bound to an appropriate timer routine. Invokations will be
// ignored if a previous conversion-cycle is not yet completed.

DEFINE_HANDLE(AnalogInput);

AnalogInput newAnalogInput(void *descriptor);
AnalogInput destroyAnalogInput(AnalogInput input);
BOOL analogInputValid(AnalogInput input);

// Retrieve the current value of the input.
uint16_t analogInputValue(AnalogInput input);

// Cycle through all inputs and update the values.
// Use __vector_ANALOG_INPUT_TIMER_INTERRUPT to bind to a timer interrupt.
void analogInputReadValues();

// Return true, if a conversion cycle triggered by analogInputReadValues() is currently running.
BOOL analogInputCycleRunning();

// Must be called after a conversion is finished (from the ADC interrupt handler).
void analogInputConversionFinished(uint16_t new_value);

// ==== This interface is used in analog.c and must be implemented in another module.
void analogInput_impl_startConversion(void *descriptor);
void analogInput_impl_stopConversions();
void analogInput_impl_destroy(void *descriptor);

#endif /* ANALOG_H_ */
