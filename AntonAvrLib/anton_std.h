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
#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>

typedef enum {
	FALSE,
	TRUE
} BOOL;

typedef uint8_t byte;

asm ("__RAMPZ__ = 0x3b");

#define ZERO_STRUCT(variableName, structName)				\
	uint8_t *___tmpStructContent = variableName;			\
	for (int __i = 0; __i < sizeof(structName); __i++) {	\
		___tmpStructContent[i] = 0;							\
	}

#define __CONCAT__(A, B) A##B

// makro to define anonymous pointer-types with compiler-checked type-safety.
#define DEFINE_HANDLE(name)	\
	typedef struct name##__ { uint16_t unused; } *name;

#define LOBYTE(x)        (uint8_t)((uint16_t)x)
#define HIBYTE(x)        (uint8_t)(((uint16_t)x)>>8)
#define MAKE_WORD(hi,lo) (((hi) * 0x100) + lo)
#define AS_WORD(b) MAKE_WORD(b, 0)

#define enable_interrupts() sei()
#define disable_interrupts() cli()

#define delay(x) _delay_ms(x)

#endif /* ANTON_STD_H_ */