
// This main() is useful when using pin-change interrupts to update the button status.
// In that case, all the functionality of the IO-processor is handled via interrupts.

#include <kernel.h>

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
