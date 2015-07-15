
#include "native_simulation.h"

void init_native_simulation() {
    PCMSK0 = PCMSK1 = PCMSK2 = PCMSK3 = 0;
    PCICR = 0;
    TWCR = TWDR = TWBR = TWSR = TWAR = TWAMR = 0;
    MCUSR = 0;
    hardware_reset_triggered = 0;
    _interrupts_enabled = 0;

    // Some fake values
    DYNAMIC_MEMORY_START = 0x200;
    ALLOCATED_HEAP_END = DYNAMIC_MEMORY_START;
    MALLOC_END = RAMEND - 0x100;
    MALLOC_START = DYNAMIC_MEMORY_START;
}

uint16_t DYNAMIC_MEMORY_START;
uint16_t ALLOCATED_HEAP_END;
uint16_t MALLOC_END;
uint16_t MALLOC_START;

REGISTER PCMSK0, PCMSK1, PCMSK2, PCMSK3;
REGISTER PCICR;

REGISTER TWCR, TWDR, TWBR, TWSR, TWAR, TWAMR;

REGISTER MCUSR;

uint8_t hardware_reset_triggered = 0;

void _delay_ms(double ms) {
    // Nothing, just pretend.
}

void _delay_us(double us) {
    // Nothing, just pretend.
}

uint8_t _interrupts_enabled = 1;

void cei() {
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

static unsigned char eeprom_data[4096];

uint16_t eeprom_read_word(uint16_t *addr) {
    #pragma GCC diagnostic ignored "-Wpointer-to-int-cast"
    return ((uint16_t*) eeprom_data)[(int) addr];
}

void eeprom_update_word(uint16_t *addr, uint16_t value) {
    #pragma GCC diagnostic ignored "-Wpointer-to-int-cast"
    ((uint16_t*) eeprom_data)[(int) addr] = value;
}
