
#include <kernel_base.h>
#include <misc/memory.h>

void a(uint16_t ignored) {}

int main() {
	uint16_t total = TotalDynamicMemory;
	uint16_t available = availableDynamicMemory();
	char *ptr = malloc(sizeof(char) * 30);
	uint16_t total2 = TotalDynamicMemory;
	uint16_t available2 = availableDynamicMemory();
	free(ptr);
	uint16_t total3 = TotalDynamicMemory;
	uint16_t available3 = availableDynamicMemory();
	
	// Just to avoid compiler warnings
	a(available);
	a(available2);
	a(available3);
	a(total);
	a(total2);
	a(total3);
}
