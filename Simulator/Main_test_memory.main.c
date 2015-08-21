
#include <kernel_base.h>
#include <kernel/memory.h>

#pragma GCC diagnostic ignored "-Wunused-variable"

int main() {
	uint16_t staticMem = UsedStaticMemory;
	uint16_t total = TotalDynamicMemory;
	
	uint16_t used = usedDynamicMemory();
	uint16_t available = availableDynamicMemory();
	float usedF = usedDynamicMemoryF();
	float availableF = availableDynamicMemoryF();
	
	char *ptr = malloc(sizeof(char) * 30);
	
	uint16_t used2 = usedDynamicMemory();
	uint16_t available2 = availableDynamicMemory();
	float usedF2 = usedDynamicMemoryF();
	float availableF2 = availableDynamicMemoryF();
	
	free(ptr);
	
	uint16_t used3 = usedDynamicMemory();
	uint16_t available3 = availableDynamicMemory();
	float usedF3 = usedDynamicMemoryF();
	float availableF3 = availableDynamicMemoryF();
	
	uint16_t mem = availableDynamicMemory() / 3;
	void *shouldBeValid = malloc(mem);
	void *shouldBeValid2 = malloc(mem);
	void *shouldBeValid3 = malloc(availableDynamicMemory());
	void *shouldBeNull = malloc(1);
	free(shouldBeValid2);
	void *shouldBeOk = malloc(1);
	float shouldBeOne = usedDynamicMemoryF();
	uint16_t shouldBeZero = availableDynamicMemory();
}
