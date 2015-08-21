#include "memory.h"

static uint16_t _usedDynamicMemory() {
	uint16_t mainProcessStack;
	if (MALLOC_END == 0)
		// If malloc-tunable is not set, we cannot determine process-stack here.
		// This also means that no multi-processing is used.
		mainProcessStack = 0;
	else
		mainProcessStack = RAMEND - (uint16_t) MALLOC_END;
	uint16_t unusedMemory = MALLOC_START - DYNAMIC_MEMORY_START; // Count memory ignored by malloc as "used".
	uint16_t usedHeap = (uint16_t) ALLOCATED_HEAP_END - (uint16_t) MALLOC_START;
	
	// 2 additional bytes seem to always be used by malloc.
	return mainProcessStack + unusedMemory + usedHeap + 2;
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
