/*
 * Created: 08.02.2012 23:34:38
 *  Author: Anton
 */

#ifndef TANK_OS_COMMON_H_
#define TANK_OS_COMMON_H_

#include <stdint.h>
#include <stdlib.h>
#include <platform/common.h>

typedef enum {
	FALSE = 0,
	TRUE = 1
} BOOL;

#define BOOL_STR(b) (b ? "true" : "false")

typedef uint8_t byte;

// Macro to define anonymous pointer-types with compiler-checked type-safety.
// Below functions can be used for typical operations.
#define DEFINE_HANDLE(name)	\
	typedef struct name { void *pointer; } name

#define Invalid(Type) ((Type) { NULL })
#define StaticInvalid(Type) { NULL }
#define IsValid(object) (object.pointer != NULL)
#define Cast(OtherType, object) ((OtherType) { object.pointer })
#define Equal(object1, object2) (object1.pointer == object2.pointer)
#define As(Type, ptr) ((Type) { (void*) ptr })
#define Constant(ptr) { (void*) ptr }
#define Get(Type, handle) ((Type*) handle.pointer)

// Conversion between uint8_t and uint16_t
#define LOBYTE(x)        (uint8_t)((uint16_t)x)
#define HIBYTE(x)        (uint8_t)(((uint16_t)x)>>8)
#define MAKE_WORD(hi,lo) (((hi) * 0x100) + lo)
#define AS_WORD(b) MAKE_WORD(b, 0)

// This can be used to ignore unused variables in test-modules
// #pragma GCC diagnostic ignored "-Wunused-variable"

#endif /* TANK_OS_COMMON_H_ */
