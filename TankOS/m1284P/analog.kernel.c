/*
 * Created: 28.04.2012 11:29:04
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include "analog.h"
#include "port.h"
#include <string.h>

static Pin inputPins[8];

AnalogInput newAnalogInput_m1284P(uint8_t num) {
    if (num > 7) {
        klog("ima\n"); // Illegal m1284P analog input
        return Invalid(AnalogInput);
    }
    return newAnalogInput(inputPins[num]);
}

static void configure_analog_registers() {
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

void init_analog_m1284P() {
    configure_analog_registers();

    memcpy(inputPins, (Pin[]) { pinA0, pinA1, pinA2, pinA3, pinA4, pinA5, pinA6, pinA7 }, sizeof(inputPins));
    for (uint8_t i = 0; i <= 7; i++) {
        // TODO - error checking
        registerAnalogInputPin(inputPins[i], i);
    }
}
KERNEL_INIT(init_analog_m1284P)
