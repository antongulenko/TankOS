#ifdef AVR
// Only compiles on Avr platform

#include "memory.h"

// This is maintained by the malloc implementation.
// Points to the address on the heap, from where on there are no allocations.
extern char *__brkval;

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

#endif // AVR
