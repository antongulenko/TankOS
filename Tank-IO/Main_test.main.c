
#include "kernel.h"
#include "LedOperations.h"
#include <platform/Avr/memory.h>
#include <kernel/klib.h>
#include <platform/Avr/buffer_stdout.h>
#include <stdio.h>

uint8_t twi_data_length;
BOOL twi_data[256];

void setMyLeds(unsigned nr, BOOL enable) {
	for (int j = 0; j < allLeds->count; j++) {
		if (j % buttons->count != nr) continue;
		if (enable)
			enableLed(allLeds->leds[j]);
		else
			disableLed(allLeds->leds[j]);
	}
}

unsigned int getNr(Button b)  {
	if (Equal(b, button1)) return 0;
	if (Equal(b, button2)) return 1;
	if (Equal(b, button3)) return 2;
	if (Equal(b, button4)) return 3;
	return 0;
}

void buttonPressed(Button b) {
	setMyLeds(getNr(b), TRUE);
}

void buttonReleased(Button b) {
	setMyLeds(getNr(b), FALSE);
	if (Equal(b, button4)) {
		buffer_stdout_flush_to_eeprom((char*) 64, 2048);
		blinkAllLeds(allLeds, 2);
	}
}

int main() {
	//MemoryInfo i = memoryInfo();
    //printf("Static: %i. Dynamic: %i of %i, available: %i.\n",
	//			i.used_static, i.used_dynamic, i.total_dynamic, i.available_dynamic);
	printf("A: %02x, D: %02x, C: %02x", TWAR, TWDR, TWCR);
	buffer_stdout_flush_to_eeprom((char*) 2, 64);
	printf("XXX");
	leds_run();
	buttonPressedCallback = &buttonPressed;
	buttonReleasedCallback = &buttonReleased;
	
	while (1) {
		if (buttonStatus(button1) && buttonStatus(button2) && buttonStatus(button3) && buttonStatus(button4))
			leds_run();
	}
}

void buttonTest() {
	for (int i = 0; i < buttons->count; i++) {
		for (int j = 0; j < allLeds->count; j++) {
			if (j % buttons->count != i) continue;
			if (buttonStatus(buttons->buttons[i])) {
				enableLed(allLeds->leds[j]);
				if (i == 3)
					blinkAllLeds(allLeds, 2);
			} else {
				disableLed(allLeds->leds[j]);
			}
		}
	}
}
