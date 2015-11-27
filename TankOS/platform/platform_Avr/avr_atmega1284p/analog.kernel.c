/*
 * Created: 28.04.2012 11:29:04
 *  Author: Anton
 */

#include <platform/kernel_init.h>
#include <kernel/klib.h>
#include "analog.h"
#include "port.h"
#include <string.h>

typedef struct AnalogInputPin {
    Pin pin;
    uint8_t num;
} AnalogInputPin;

AnalogInput newAnalogInput_m1284P(uint8_t num) {
    Pin inputPins[8] = { pinA0, pinA1, pinA2, pinA3, pinA4, pinA5, pinA6, pinA7 };

    if (num > 7) {
        klog("ima\n"); // Illegal m1284P analog input
        return Invalid(AnalogInput);
    }
    AnalogInputPin *anaPin = kalloc(sizeof(AnalogInputPin));
    if (!anaPin) {
        return Invalid(AnalogInput);
    }
    Pin pin = inputPins[num];
    if (!occupyPin(pin, PinAnalogInput)) {
        free(anaPin);
        return Invalid(AnalogInput);
    }
    anaPin->num = num;
    anaPin->pin = pin;
    AnalogInput result = newAnalogInput((void*) anaPin);
    if (IsValid(result)) {
        // Disable input buffer to save energy for the unused digital pin input.
        DIDR0 |= _BV(num);
    } else {
        free(anaPin);
        deOccupyPin(pin, PinAnalogInput);
    }
    return result;
}

void analogInput_impl_destroy(void *descriptor) {
    if (descriptor == NULL) return;
    AnalogInputPin *pin = (AnalogInputPin*) descriptor;
    DIDR0 &= ~_BV(pin->num);
    deOccupyPin(pin->pin, PinAnalogInput);
}

void analogInput_impl_startConversion(void *descriptor) {
    AnalogInputPin *pin = (AnalogInputPin*) descriptor;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        // Set only MUX4..0, the 5 LSB of ADMUX.
        ADMUX = (ADMUX & 0xE0) | pin->num;
    }
    ADCSRA |= _BV(ADEN) | _BV(ADSC) | _BV(ADIE); // Start the conversion with interrupt enabled
}

void analogInput_impl_stopConversions() {
    // Disable the ADC altogether to keep the idle mode from triggering automatic conversions.
    ADCSRA &= ~_BV(ADEN);
}

void init_analog_m1284P() {
    // Initialize the ADC settings. See description in analog.h.
    ADMUX = _BV(REFS0); // REFS1..0 = 0b01 -> AVCC as reference voltage.
    ADCSRA = _BV(ADPS2) | _BV(ADPS1) | _BV(ADPS0); // 10-bit resolution requires biggest prescaler
    ADCSRB = 0; // No automatic trigger source used.
}
KERNEL_INIT(init_analog_m1284P)

INTERRUPT_HANDLER(ADC_vect) {
    // Read the low byte first to make sure they belong to the same conversion.
    uint16_t new_value = (uint16_t) ADCL;
    new_value |= MAKE_WORD(ADCH, 0x0);
    analogInputConversionFinished(new_value);
}
