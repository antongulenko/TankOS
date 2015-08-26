#ifndef MEMORY___H_
#define MEMORY___H_

#include <tank_os_common.h>

// 'Dynamic memory' here includes heap and stack.
// Values given in bytes.

// Automatic linker symbol
extern char __heap_start;
#define DYNAMIC_MEMORY_START (&__heap_start)

#define TotalDynamicMemory (RAMEND - (uint16_t) DYNAMIC_MEMORY_START)
#define UsedStaticMemory ((uint16_t) DYNAMIC_MEMORY_START - RAMSTART)

uint16_t usedDynamicMemory();

// This only takes free() into account, if the freed piece of memory was at the
// end of the heap. 'Holes' in the heap are not checked.
uint16_t availableDynamicMemory();

typedef struct MemoryInfo {
    uint16_t used_static;
    uint16_t total_dynamic;
    uint16_t used_dynamic;
    uint16_t available_dynamic;
} MemoryInfo;

MemoryInfo memoryInfo();

#endif // MEMORY___H_
