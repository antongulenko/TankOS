
#include <kernel_base.h>
#include <platform/Avr/memory.h>

#pragma GCC diagnostic ignored "-Wunused-variable"

int main() {
	uint16_t staticMem = UsedStaticMemory;
	uint16_t total = TotalDynamicMemory;

	uint16_t used = usedDynamicMemory();
	uint16_t available = availableDynamicMemory();

	char *ptr = malloc(sizeof(char) * 30);

	uint16_t used2 = usedDynamicMemory();
	uint16_t available2 = availableDynamicMemory();

	free(ptr);

	uint16_t used3 = usedDynamicMemory();
	uint16_t available3 = availableDynamicMemory();

	uint16_t mem = availableDynamicMemory() / 3;
	void *shouldBeValid = malloc(mem);
	void *shouldBeValid2 = malloc(mem);
	void *shouldBeValid3 = malloc(availableDynamicMemory());
	void *shouldBeNull = malloc(1);
	free(shouldBeValid2);
	void *shouldBeOk = malloc(1);
	uint16_t shouldBeZero = availableDynamicMemory();
}
