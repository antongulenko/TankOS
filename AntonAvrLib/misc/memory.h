#ifndef MEMORY___H_
#define MEMORY___H_

#include "../anton_std.h"

// 'Dynamic memory' here includes heap and stack.
// Values given in bytes.

// This is filled by the linker.
extern char __heap_start;

#define TotalDynamicMemory (RAMEND - (uint16_t) &__heap_start)
#define UsedStaticMemory ((uint16_t) &__heap_start - RAMSTART)

uint16_t usedDynamicMemory();

// This only takes free() into account, if the freed piece of memory was at the
// end of the heap. 'Holes' in the heap are not checked.
uint16_t availableDynamicMemory();

// The result of availableDynamicMemory() can not be obtained from malloc()
// as number of bytes, 2 bytes stay unused (or are used by malloc itself).
#define allocateableDynamicMemory() (availableDynamicMemory() - 2)

// These two functions give a fraction between 0 and 1.
float usedDynamicMemoryF();
float availableDynamicMemoryF();

#endif