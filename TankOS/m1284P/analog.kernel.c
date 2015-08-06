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
    if (num > 7) return Invalid(AnalogInput);
    return newAnalogInput(inputPins[num]);
}

void init_analog_m1284P() {
    memcpy(inputPins, (Pin[]) { pinA0, pinA1, pinA2, pinA3, pinA4, pinA5, pinA6, pinA7 }, sizeof(inputPins));
    for (uint8_t i = 0; i <= 7; i++) {
        // TODO - error checking
        registerAnalogInputPin(inputPins[i], i);
    }
}
KERNEL_INIT(init_analog_m1284P)
