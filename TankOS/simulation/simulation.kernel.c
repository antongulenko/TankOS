
#include "simulation.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

uint8_t __registerData_mem[4096 * 4];
uint8_t __registerData_io[4096 * 4];

uint8_t *__register(uint16_t offset, uint8_t size, uint8_t *buffer, unsigned long int buffer_size) {
    if (offset + size - 1 > buffer_size) {
        printf("Register data offset %x is larger than register page size %lu.\n", offset, (long unsigned int) buffer_size);
        exit(1);
    }
    return (uint8_t*) buffer + offset;
}

void delay_ms_hook(uint32_t ms) __attribute__((weak));
void delay_ms_hook(uint32_t ms) {
	// Nothing by default.
}
void delay_us_hook(uint32_t us) __attribute__((weak));
void delay_us_hook(uint32_t us) {
	// Nothing by default.
}

void init_native_simulation() {
    memset(__registerData_mem, 0, sizeof(__registerData_mem));
    memset(__registerData_io, 0, sizeof(__registerData_io));

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

uint8_t hardware_reset_triggered = 0;

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
