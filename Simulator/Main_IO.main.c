
#include <devices/button.h>
#include <kernel/klib.h>
#include <platform/Avr/memory.h>
#include <platform/Avr/buffer_stdout.h>
#include <stdio.h>
#include "../Tank-IO/tank_button.h"
#include "../Tank-IO/tank_led.h"

void runLeds() {
	for (int i = 0; i < allLeds->count; i++) {
		flashLed(allLeds->leds[i], 4);
	}
	for (int i = allLeds->count - 2; i >= 0; i--) {
		flashLed(allLeds->leds[i], 4);
	}
}

int main(void) {
	buffer_stdout_flush_to_eeprom((char*) 2, 512);
	runLeds();
}
