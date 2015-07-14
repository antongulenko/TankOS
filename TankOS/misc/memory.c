#include "memory.h"

// TODO
// On x86 the memory handlings are not really correct, but sufficient for unit tests...
#ifndef AVR
// 32/64 bit pointers are cast to 16 bit integers...
#pragma GCC diagnostic ignored "-Wpointer-to-int-cast"
#endif

// This is maintained by the malloc implementation.
// Points to the address on the heap, from where on there are no allocations.
// TODO more elegant solution
#ifdef AVR
extern char *__brkval;
#else
extern uint16_t __brkval;
#endif

static uint16_t _usedDynamicMemory() {
	uint16_t mainProcessStack = RAMEND - (uint16_t) __malloc_heap_end;
	uint16_t usedHeap = (uint16_t) __brkval - (uint16_t) __malloc_heap_start;

	// 2 additional bytes seem to always be used by malloc.
	return mainProcessStack + usedHeap + 2;
}

uint16_t usedDynamicMemory() {
	uint16_t used = _usedDynamicMemory();
	uint16_t total = TotalDynamicMemory;
	if (used > total) used = total;
	return used;
}

uint16_t availableDynamicMemory() {
	uint16_t used = _usedDynamicMemory();
	uint16_t total = TotalDynamicMemory;
	if (used > total) used = total;
	return total - used;
}

float usedDynamicMemoryF() {
	return usedDynamicMemory() / (float) TotalDynamicMemory;
}

float availableDynamicMemoryF() {
	return availableDynamicMemory() / (float) TotalDynamicMemory;
}

MemoryInfo memoryInfo() {
    MemoryInfo info;
    info.used_static = UsedStaticMemory;
    info.total_dynamic = TotalDynamicMemory;
    info.used_dynamic = usedDynamicMemory();
    info.available_dynamic = availableDynamicMemory();
    info.used_dynamic_f = usedDynamicMemoryF();
    info.available_dynamic_f = availableDynamicMemoryF();
    return info;
}
