
#include "simulation.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

byte eeprom_data[4096];
static BOOL _interrupts_enabled;
BOOL hardware_reset_triggered;

REGISTER MCUSR, TWCR, TWDR;

void init_native_simulation() {
    MCUSR = 0;
    // TWDR = TWCR = 0;

    memset(eeprom_data, 0, sizeof(eeprom_data));

    _interrupts_enabled = FALSE;
    hardware_reset_triggered = FALSE;
}

void HARDWARE_RESET() {
    hardware_reset_triggered = TRUE;
}

void sei() {
    _interrupts_enabled = TRUE;
}

void cli() {
    _interrupts_enabled = FALSE;
}

BOOL interrupts_enabled() {
    return _interrupts_enabled;
}

uint16_t eeprom_read_word(uint16_t *addr) {
    // This is a workaround to simulate the EEMEM attribute (which is not available on x86)
    // addr will be the address of some real in-RAM variable, so we take the modulo of our eeprom buffer size.
    // This can of course cause collisions.
    #pragma GCC diagnostic ignored "-Wpointer-to-int-cast"
    return ((uint16_t*) eeprom_data)[(int) addr % sizeof(eeprom_data)];
}

void eeprom_update_word(uint16_t *addr, uint16_t value) {
    #pragma GCC diagnostic ignored "-Wpointer-to-int-cast"
    ((uint16_t*) eeprom_data)[(int) addr % sizeof(eeprom_data)] = value;
}

uint16_t eeprom_read_byte(uint8_t *addr) {
    #pragma GCC diagnostic ignored "-Wpointer-to-int-cast"
    return ((uint8_t*) eeprom_data)[(int) addr % sizeof(eeprom_data)];
}

void eeprom_update_byte(uint8_t *addr, uint8_t value) {
    #pragma GCC diagnostic ignored "-Wpointer-to-int-cast"
    ((uint8_t*) eeprom_data)[(int) addr % sizeof(eeprom_data)] = value;
}
