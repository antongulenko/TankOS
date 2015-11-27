#ifndef __AVR_COMMON_HEADER_
#define __AVR_COMMON_HEADER_

// Normal AVR environment
#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/twi.h>
#include <util/atomic.h>
#include <avr/sleep.h>
#include <avr/wdt.h>
#include <avr/eeprom.h>
#include <avr/pgmspace.h>
#include <alloca.h>

#define delay_ms(ms) _delay_ms(ms)
#define delay_us(us) _delay_us(us)

#define INTERRUPT_HANDLER(name) ISR(name)
// #define INTERRUPT_FUNCTION __attribute__ ((interrupt))
#define INTERRUPT_FUNCTION __attribute__ ((signal,__INTR_ATTRS)) // Taken from interrupt.h to mirror ISR()
#define WEAK_FUNCTION __attribute__((weak))

#define interrupts_enabled() (SREG & _BV(SREG_I))

extern char *__malloc_heap_end;
#define initial_process_stack_top() ((void*) __malloc_heap_end)

asm ("__RAMPZ__ = 0x3b");

#endif // __AVR_COMMON_HEADER_
