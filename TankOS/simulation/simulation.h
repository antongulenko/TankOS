#ifndef NATIVE_SIMULATION_H_
#define NATIVE_SIMULATION_H_

#include <stdint.h>
#define _BV(a) (1 << a)

uint8_t *__registerByte(uint16_t offset);
uint16_t *__registerWord(uint16_t offset);

// Include memory definitions for Atmega 1284p, copied from the AVR library.
// Registers are simulated through a dedicated memory buffer.
// This mostly mirrors the avr/io.h header.
#define _SFR_MEM8(addr) (*__registerByte(addr))
#define _SFR_MEM16(addr) (*__registerWord(addr))
#define _SFR_IO8(addr) (*__registerByte(addr))
#define _SFR_IO16(addr) (*__registerWord(addr))
#include "iom1284p.h"
#include "portpins.h"
#include "common.h"

// Resets all variables
void init_native_simulation();

// This is included when we do a native build.
// Instead of preprocessor-macros for hardware addresses, some registers
// are simply represented as global data.

// This also contains some definitions to make code compile for the native env.

// == stdio.h
// This is not usable, only to make the code compile somehow.
#define FDEV_SETUP_STREAM(a,b,c) {0}

// == Memory
// TODO use correct values x86 platforms?
extern uint16_t DYNAMIC_MEMORY_START;
extern uint16_t ALLOCATED_HEAP_END;
extern uint16_t MALLOC_END;
extern uint16_t MALLOC_START;
#define RAMSTART 0x100
#define RAMEND 0xffff

// == delay
// This allows adding some code to each delay_ms call.
// Intended for testing, to keep track of delay_ms calls.
void delay_ms_hook(uint32_t ms);
void delay_us_hook(uint32_t us);

static inline void delay_ms(uint32_t ms) {
	delay_ms_hook(ms);
}
static inline void delay_us(uint32_t us) {
	delay_us_hook(us);
}

uint8_t _interrupts_enabled; // Can be used by tests
void sei(); // Enable external interrupts
void cli(); // Disable external interrupts

// == Atomic
// TODO -- this should be testable somehow.
#define ATOMIC_BLOCK(ARG)
#define ATOMIC_RESTORESTATE
#define ATOMIC_FORCEON

// == Sleep
#define sleep_enable()
#define set_sleep_mode(SleepMode)
#define SLEEP_MODE_IDLE
#define sleep_cpu()

// == WDT
#define wdt_enable(mode)
#define WDTO_15MS
#define wdt_disable()

// == Hardware reset
extern uint8_t hardware_reset_triggered;
void HARDWARE_RESET();

// == TWI
enum {
	TW_START,
	TW_REP_START,
	TW_MR_ARB_LOST,
	TW_MT_DATA_ACK,
	TW_MT_SLA_ACK,
	TW_MT_SLA_NACK,
	TW_MT_DATA_NACK,
	TW_MR_SLA_ACK,
	TW_MR_DATA_ACK,
	TW_MR_SLA_NACK,
	TW_MR_DATA_NACK,
	TW_ST_SLA_ACK,
	TW_ST_ARB_LOST_SLA_ACK,
	TW_ST_DATA_ACK,
	TW_ST_LAST_DATA,
	TW_ST_DATA_NACK,
	TW_SR_SLA_ACK,
	TW_SR_ARB_LOST_SLA_ACK,
	TW_SR_GCALL_ACK,
	TW_SR_ARB_LOST_GCALL_ACK,
	TW_SR_DATA_ACK,
	TW_SR_GCALL_DATA_ACK,
	TW_SR_STOP,
	TW_SR_DATA_NACK,
	TW_SR_GCALL_DATA_NACK,
	TW_NO_INFO,
	TW_BUS_ERROR,
    TW_MT_ARB_LOST = TW_MR_ARB_LOST, // They are the same in avr-libc
};

#define TW_STATUS_MASK  (_BV(TWS7)|_BV(TWS6)|_BV(TWS5)|_BV(TWS4)|_BV(TWS3))
#define TW_STATUS		(TWSR & TW_STATUS_MASK)

// == eeprom
#define EEMEM
uint16_t eeprom_read_word(uint16_t *addr);
void eeprom_update_word(uint16_t *addr, uint16_t value);

// == function attributes
#define INTERRUPT_HANDLER(name) void interrupt_##name()
#define INTERRUPT_FUNCTION

#endif // NATIVE_SIMULATION_H_
