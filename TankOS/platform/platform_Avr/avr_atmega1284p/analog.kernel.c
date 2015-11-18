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
    Pin pin = inputPins[num];
    if (!occupyPin(pin, PinAnalogInput)) {
        return Invalid(AnalogInput);
    }
    AnalogInput result = newAnalogInput(Get(void, pin));
    if (IsValid(result)) {
        // Disable input buffer to save energy for the unused digital pin input.
        DIDR0 |= _BV(num);
    }
    return result;
}

void analogInput_impl_destroy(void *descriptor) {
    if (descriptor == NULL) return;
    Pin pin = As(Pin, descriptor);
    ConfigData *data = pinConfigData(pin, PinAnalogInput);
    if (data == NULL) return;
    uint8_t pinNum = data->data[0];
    DIDR0 &= ~_BV(pinNum);
    deOccupyPin(pin, PinAnalogInput);
}

void analogInput_impl_startConversion(void *descriptor) {
    Pin pin = As(Pin, descriptor);
    ConfigData *data = pinConfigData(pin, PinAnalogInput);
    if (data == NULL) return;
    uint8_t pinNum = data->data[0];
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        // Set only MUX4..0, the 5 LSB of ADMUX.
        ADMUX = (ADMUX & 0xE0) | pinNum;
    }
    ADCSRA |= _BV(ADEN) | _BV(ADSC) | _BV(ADIE); // Start the conversion with interrupt enabled
}

void analogInput_impl_stopConversions() {
    // Disable the ADC altogether to keep the idle mode from triggering automatic conversions.
    ADCSRA &= ~_BV(ADEN);
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
        ConfigData data = { i, 0, 0, 0 };
        registerPinConfig(inputPins[1], PinAnalogInput, data);
    }
}
KERNEL_INIT(init_analog_m1284P)

INTERRUPT_HANDLER(ADC_vect) {
    // Read the low byte first to make sure they belong to the same conversion.
    uint16_t new_value = (uint16_t) ADCL;
    new_value |= MAKE_WORD(ADCH, 0x0);
    analogInputConversionFinished(new_value);
}
