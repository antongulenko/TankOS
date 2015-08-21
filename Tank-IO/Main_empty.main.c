
#include "kernel.h"
#include <misc/memory.h>
#include <misc/klib.h>
#include <kernel/buffer_stdout.h>
#include <stdio.h>

void runLeds();

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
}

void runLeds() {
	for (int i = 0; i < allLeds->count; i++) {
		flashLed(allLeds->leds[i], 4);
	}
	for (int i = allLeds->count - 2; i >= 0; i--) {
		flashLed(allLeds->leds[i], 4);
	}
}

int main() {
	MemoryInfo i = memoryInfo();
    printf("Static: %i. Dynamic: %i of %i, available: %i.\n",
				i.used_static, i.used_dynamic, i.total_dynamic, i.available_dynamic);
    //eeprom_busy_wait();
	//buffer_stdout_flush_to_eeprom((char*) 2, 512);
	runLeds();

	buttonPressedCallback = &buttonPressed;
	buttonReleasedCallback = &buttonReleased;
	while (1) {
		if (buttonStatus(button1) && buttonStatus(button2) && buttonStatus(button3) && buttonStatus(button4))
			runLeds();
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
