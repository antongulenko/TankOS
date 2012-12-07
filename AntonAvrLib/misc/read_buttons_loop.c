
#include "read_buttons_loop.h"

void button_pressed(PButton button) __attribute__((weak));
void button_pressed(PButton button) {}

void button_released(PButton button) __attribute__((weak));
void button_released(PButton button) {}

extern BOOL button_loop_running = FALSE;

void read_buttons_loop(uint8_t buttonCount, PButton *buttonArray) {
	// Allocate space to memorize the status of all the buttons.
	BOOL *hasBeenPressed = calloc(buttonCount, sizeof(BOOL));
	button_loop_running = TRUE;
	
	// Loop reading the button events, until the variable is reset.
	while (button_loop_running) {
		for (int i = 0; i < buttonCount; i++) {
			PButton button = buttonArray[i];
			BOOL isPressed = buttonStatus(button);
			if (!hasBeenPressed[i] && isPressed) button_pressed(button);
			if (hasBeenPressed[i] && !isPressed) button_released(button);
			hasBeenPressed[i] = isPressed;
		}
	}
}
