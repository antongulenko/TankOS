
// Normal AVR environment
#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/twi.h>
#include <util/atomic.h>
#include <avr/sleep.h>
#include <avr/wdt.h>
#include <avr/eeprom.h>
#include <alloca.h>

extern char __heap_start;
extern char *__brkval;
#define DYNAMIC_MEMORY_START (&__heap_start)
#define ALLOCATED_HEAP_END __brkval
#define MALLOC_START __malloc_heap_start
#define MALLOC_END __malloc_heap_end

#define delay_ms(ms) _delay_ms(ms)
#define delay_us(us) _delay_us(us)

#define interrupts_enabled() (SREG & _BV(SREG_I))

#define INTERRUPT_HANDLER(name) ISR(name)
#define INTERRUPT_FUNCTION __attribute__ ((interrupt))
#define WEAK_FUNCTION __attribute__((weak))
