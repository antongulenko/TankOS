/*
 * Created: 28.04.2012 11:29:04
 *  Author: Anton
 */

#include <platform/kernel_init.h>
#include <kernel/klib.h>
#include "analog.h"
#include "port.h"
#include <string.h>

static Pin inputPins[8];

AnalogInput newAnalogInput_m1284P(uint8_t num) {
    if (num > 7) {
        klog("ima\n"); // Illegal m1284P analog input
        return Invalid(AnalogInput);
    }
    // Disable input buffer to save energy for the unused digital pin input.
    DIDR0 |= _BV(num);
    return newAnalogInput(inputPins[num]);
}

static void configure_analog_registers() {
  	// Initialize the ADC settings. See description in analog.h.
	ADMUX = _BV(REFS0); // REFS1..0 = 0b01 -> AVCC as reference voltage.
	ADCSRA = _BV(ADPS2) | _BV(ADPS1) | _BV(ADPS0); // 10-bit resolution requires biggest prescaler
	ADCSRB = 0; // No automatic trigger source used.
}

void init_analog_m1284P() {
    configure_analog_registers();

    memcpy(inputPins, (Pin[]) { pinA0, pinA1, pinA2, pinA3, pinA4, pinA5, pinA6, pinA7 }, sizeof(inputPins));
    for (uint8_t i = 0; i <= 7; i++) {
        registerAnalogInputPin(inputPins[i], i);
    }
}
KERNEL_INIT(init_analog_m1284P)
