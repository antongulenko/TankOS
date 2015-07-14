#ifndef MEMORY___H_
#define MEMORY___H_

#include <tank_os_common.h>

// 'Dynamic memory' here includes heap and stack.
// Values given in bytes.

// This header and module require the following defines/variables:
// DYNAMIC_MEMORY_START - where does the malloc allocation heap start
// ALLOCATED_HEAP_END - the first address NOT allocated by malloc
// RAMEND, RAMSTART - start/end of RAM (including static memory)
// MALLOC_START - like DYNAMIC_MEMORY_START, but used by the malloc implementation
// MALLOC_END - similar to RAMEND, but might additionally exclude stack memory

#define TotalDynamicMemory (RAMEND - (uint16_t) DYNAMIC_MEMORY_START)
#define UsedStaticMemory ((uint16_t) DYNAMIC_MEMORY_START - RAMSTART)

uint16_t usedDynamicMemory();

// This only takes free() into account, if the freed piece of memory was at the
// end of the heap. 'Holes' in the heap are not checked.
uint16_t availableDynamicMemory();

// These two functions give a fraction between 0 and 1.
float usedDynamicMemoryF();
float availableDynamicMemoryF();

typedef struct {
    uint16_t used_static;
    uint16_t total_dynamic;
    uint16_t used_dynamic;
    uint16_t available_dynamic;
    float used_dynamic_f;
    float available_dynamic_f;
} MemoryInfo;

MemoryInfo memoryInfo();

#endif // MEMORY___H_
