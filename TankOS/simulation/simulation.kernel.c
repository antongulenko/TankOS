
#include "simulation.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

unsigned int DelayedMS;
unsigned int DelayMSCalled;
unsigned int DelayedUS;
unsigned int DelayUSCalled;

REGISTER MCUSR, TWDR, TWCR, hidden_TWSR, ADCSRA, ADCH, ADCL, ADMUX;

void init_native_simulation() {
    MCUSR = TWDR = TWCR = hidden_TWSR = ADCSRA = ADCH = ADCL = ADMUX = 0;
    DelayedMS = 0;
    DelayMSCalled = 0;
    DelayedUS = 0;
    DelayUSCalled = 0;

    hardware_reset_triggered = 0;
    _interrupts_enabled = 0;

    // Some fake values
    DYNAMIC_MEMORY_START = 0x200;
    ALLOCATED_HEAP_END = DYNAMIC_MEMORY_START;
    MALLOC_END = RAMEND - 0x100;
    MALLOC_START = DYNAMIC_MEMORY_START;
}

intptr_t DYNAMIC_MEMORY_START;
intptr_t ALLOCATED_HEAP_END;
intptr_t MALLOC_END;
intptr_t MALLOC_START;

uint8_t hardware_reset_triggered;
uint8_t _interrupts_enabled;

void cli() {
    _interrupts_enabled = 0;
}

void sei() {
    _interrupts_enabled = 1;
}

void HARDWARE_RESET() {
    init_native_simulation();
    hardware_reset_triggered = 1;
    MCUSR = _BV(WDRF); // Real HARDWARE_RESET is implemented through Watchdog Timeout
}

unsigned char eeprom_data[4096];

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
