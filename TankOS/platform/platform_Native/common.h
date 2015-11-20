#ifndef __NATIVE_COMMON_H_
#define __NATIVE_COMMON_H_

#define _BV(a) (1 << a)

// Include defines for bit-positions in registers.
#include "avr_libc/iom1284p.h"
#include "avr_libc/portpins.h"
#include "avr_libc/common.h"

// == Function attributes
#define INTERRUPT_HANDLER(name) void interrupt_##name()
#define INTERRUPT_FUNCTION
#define WEAK_FUNCTION __attribute__((weak))

#define PROGMEM // Only for preserving RAM on AVR

// == Needed by process
#define initial_process_stack_top() NULL

// == Delay
void delay_ms(uint32_t ms);
void delay_us(uint32_t us);

// == Atomic
// Unfortunately this is used throughout the code to ensure correct semantics on the Avr.
#define ATOMIC_BLOCK(ARG)

#endif // __NATIVE_COMMON_H_
