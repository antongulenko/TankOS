/*
 * anton_std.h
 *
 * -- Some default includes and defines
 * 
 * Created: 08.02.2012 23:34:38
 *  Author: Anton
 */ 

#ifndef ANTON_STD_H_
#define ANTON_STD_H_

#include <stdint.h>
#include <stdlib.h>

#ifdef AVR

// Normal AVR environment
#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/twi.h>
#include <util/atomic.h>

#else

// Native test environment
#include "native_simulation.h"

#endif

// This allows adding some code to each delay_ms call.
// Intended for testing, to keep track of delay_ms calls.
// AFTER including _delay_ms itself.
void delay_ms_action(uint32_t ms);
static inline void delay_ms(uint32_t ms) {
	delay_ms_action(ms);
	_delay_ms(ms);
}

typedef enum {
	FALSE = 0,
	TRUE = 1
} BOOL;

typedef uint8_t byte;

asm ("__RAMPZ__ = 0x3b");

#define ZERO_STRUCT(variableName, structName)				\
	uint8_t *___tmpStructContent = variableName;			\
	for (int __i = 0; __i < sizeof(structName); __i++) {	\
		___tmpStructContent[i] = 0;							\
	}

#define __CONCAT__(A, B) A##B

// macro to define anonymous pointer-types with compiler-checked type-safety.
// This whole struct can be cast to a void-pointer.
#define DEFINE_HANDLE(name)	\
	typedef struct name##__ { void *pointer; } name;

#define Invalid(Type) ((Type) { NULL })
#define ConstantInvalid(Type) { NULL }
#define IsValid(object) (object.pointer != NULL)
#define Cast(OtherType, object) ((OtherType) { object.pointer })
#define As(Type, ptr) ((Type) { ptr })
#define Equal(object1, object2) (object1.pointer == object2.pointer)

#define LOBYTE(x)        (uint8_t)((uint16_t)x)
#define HIBYTE(x)        (uint8_t)(((uint16_t)x)>>8)
#define MAKE_WORD(hi,lo) (((hi) * 0x100) + lo)
#define AS_WORD(b) MAKE_WORD(b, 0)

#define enable_interrupts() sei()
#define disable_interrupts() cli()

#define delay(x) delay_ms(x)

static inline void turn_word(uint16_t *word) {
	uint8_t temp = ((uint8_t*) word)[0];
	((uint8_t*) word)[0] = ((uint8_t*) word)[1];
	((uint8_t*) word)[1] = temp;
}

// This can be used to ignore unused variables in test-modules
// #pragma GCC diagnostic ignored "-Wunused-variable"

#endif /* ANTON_STD_H_ */
