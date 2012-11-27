#ifndef MEMORY___H_
#define MEMORY___H_

#include "../anton_std.h"

// 'Dynamic memory' here includes heap and stack.
// Values given in bytes.

// This is filled by the linker.
extern char __heap_start;

#define TotalDynamicMemory (RAMEND - (uint16_t) &__heap_start)

// This only takes free() into account, if the freed piece of memory was at the
// end of the heap. 'Holes' in the heap are not checked.
uint16_t availableDynamicMemory();

#endif