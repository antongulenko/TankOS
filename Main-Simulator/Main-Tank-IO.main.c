
#include <devices/button.h>
#include <misc/klib.h>
#include <misc/memory.h>
#include <kernel/buffer_stdout.h>
#include <stdio.h>
#include "../Kernel-Tank-IO/tank_button.h"
#include "../Kernel-Tank-IO/tank_led.h"

void runLeds() {
	for (int i = 0; i < allLeds->count; i++) {
		flashLed(allLeds->leds[i], 4);
	}
	for (int i = allLeds->count - 2; i >= 0; i--) {
		flashLed(allLeds->leds[i], 4);
	}
}

int main(void) {
	uint16_t before = usedDynamicMemory();
	kalloc(128);
	uint16_t after = usedDynamicMemory();
	MemoryInfo i = memoryInfo();
	printf("Static: %i. Dynamic: %i of %i, available: %i. %i -> %i.\n",
		i.used_static, i.used_dynamic, i.total_dynamic, i.available_dynamic,
		before, after);
	buffer_stdout_flush_to_eeprom((char*) 2, 512);
	runLeds();
}
