#ifndef __TESTS_SIMULATION__
#define __TESTS_SIMULATION__

#include <tank_os_common.h>

typedef uint8_t REGISTER;

// Resets all variables
void init_native_simulation();

// == Interrupts
void sei();
void cli();
BOOL interrupts_enabled();

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
extern BOOL hardware_reset_triggered;
void HARDWARE_RESET();

// == Printf
#define FDEV_SETUP_STREAM(a,b,c) {0}

// == Eeprom
#define eeprom_busy_wait()
extern unsigned char eeprom_data[4096];
#define EEMEM
uint16_t eeprom_read_word(uint16_t *addr);
void eeprom_update_word(uint16_t *addr, uint16_t value);
uint16_t eeprom_read_byte(uint8_t *addr);
void eeprom_update_byte(uint8_t *addr, uint8_t value);

// == Memory
#define RAMSTART 0x100
#define RAMEND 0xffff
#pragma GCC diagnostic ignored "-Wpointer-to-int-cast"

// == Other registers
extern REGISTER MCUSR;

// == TWI
extern REGISTER TWDR, TWCR;
#define TW_STATUS 0xaa
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

#endif // __TESTS_SIMULATION__
