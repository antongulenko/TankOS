
#include "ButtonLoopReader.h"
#include <string.h>

typedef struct _ReaderData {
	volatile BOOL running;
	uint8_t buttonCount;
	PButton *buttonArray;
	button_callback button_pressed;
	button_callback button_released;
	BOOL *hasBeenPressed;
	BOOL inUse;
} ReaderData, *PReaderData;

ButtonLoopReader ButtonLoopReader_Create(
		uint8_t buttonCount, PButton *buttonArray,
		button_callback button_pressed,
		button_callback button_released) {
	// Allocate space to memorize the status of all the buttons.
	BOOL *hasBeenPressed = calloc(buttonCount, sizeof(BOOL));
	if (!hasBeenPressed) return Invalid(ButtonLoopReader);
	PReaderData reader = (PReaderData) malloc(sizeof(ReaderData));
	if (!reader) return Invalid(ButtonLoopReader);

	reader->running = FALSE;
	reader->hasBeenPressed = hasBeenPressed;
	reader->buttonArray = buttonArray;
	reader->buttonCount = buttonCount;
	reader->button_pressed = button_pressed;
	reader->button_released = button_released;
	return As(ButtonLoopReader, reader);
}

void ButtonLoopReader_Stop(ButtonLoopReader _reader) {
	if (!IsValid(_reader)) return;
	PReaderData reader = (PReaderData) _reader.pointer;
	reader->running = FALSE;
}

void ButtonLoopReader_Destroy(ButtonLoopReader _reader) {
	if (!IsValid(_reader)) return;
	PReaderData reader = (PReaderData) _reader.pointer;
	reader->running = FALSE;
	while (reader->inUse) ; // Wait until the loop exits.
	free(reader->hasBeenPressed);
	free(reader);
}

void ButtonLoopReader_Start(ButtonLoopReader _reader) {
	if (!IsValid(_reader)) return;
	PReaderData reader = (PReaderData) _reader.pointer;
	memset(reader->hasBeenPressed, 0, reader->buttonCount * sizeof(BOOL));
	reader->running = TRUE;
	reader->inUse = TRUE;
	
	// Loop reading the button events, until the variable is reset.
	while (reader->running) {
		for (int i = 0; i < reader->buttonCount; i++) {
			PButton button = reader->buttonArray[i];
			BOOL isPressed = buttonStatus(button);
			if (!reader->hasBeenPressed[i] && isPressed)
				if (reader->button_pressed) reader->button_pressed(button);
			if (reader->hasBeenPressed[i] && !isPressed)
				if (reader->button_released) reader->button_released(button);
			reader->hasBeenPressed[i] = isPressed;
		}
	}

	reader->inUse = FALSE;
}
