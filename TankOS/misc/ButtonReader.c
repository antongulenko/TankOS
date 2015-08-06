
#include "ButtonReader.h"
#include <string.h>

typedef struct {
	volatile BOOL running;
	uint8_t buttonCount;
	Button *buttonArray;
	button_callback button_pressed;
	button_callback button_released;
	BOOL *hasBeenPressed;
	BOOL inUse;
} _ButtonReader;

#define READER Get(_ButtonReader, reader)

ButtonReader newButtonReader(Button *buttonArray, uint8_t buttonCount,
		                        button_callback button_pressed, button_callback button_released) {
	BOOL *hasBeenPressed = calloc(buttonCount, sizeof(BOOL));
	if (!hasBeenPressed) return Invalid(ButtonReader);
	_ButtonReader *reader = malloc(sizeof(_ButtonReader));
    if (!reader) {
        free(hasBeenPressed);
        return Invalid(ButtonReader);
    }

	reader->running = FALSE;
	reader->hasBeenPressed = hasBeenPressed;
	reader->buttonArray = buttonArray;
	reader->buttonCount = buttonCount;
	reader->button_pressed = button_pressed;
	reader->button_released = button_released;
	return As(ButtonReader, reader);
}

void destroyButtonReader(ButtonReader reader) {
	if (!IsValid(reader)) return;
	READER->running = FALSE;
	while (READER->inUse) ; // Wait until the loop exits.
	free(READER->hasBeenPressed);
	free(READER);
}

void stopButtonReader(ButtonReader reader) {
	READER->running = FALSE;
}

void startButtonReader(ButtonReader reader) {
    _ButtonReader *r = READER;
	memset(r->hasBeenPressed, 0, r->buttonCount * sizeof(BOOL));
	r->running = TRUE;
	r->inUse = TRUE;

	// Loop reading the button events, until the variable is reset.
	while (r->running) {
		for (int i = 0; i < r->buttonCount; i++) {
			Button button = r->buttonArray[i];
			BOOL isPressed = buttonStatus(button);
			if (!r->hasBeenPressed[i] && isPressed)
				if (r->button_pressed) r->button_pressed(button);
			if (r->hasBeenPressed[i] && !isPressed)
				if (r->button_released) r->button_released(button);
			r->hasBeenPressed[i] = isPressed;
		}
	}

	r->inUse = FALSE;
}
