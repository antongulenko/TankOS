
#include "LedOperations.h"

// Rotate left, inserting removed bits on the right.
#define ROL(data) data=(data<<1)|(data>>7)

volatile BOOL running = TRUE;
uint16_t leds_left;
uint16_t leds_middle;
uint16_t leds_right;

void led_operation_tick() {
	if (running) {
		ROL(leds_left);
		ROL(leds_middle);
		ROL(leds_right);
		setLeds(RightLeds, MAKE_WORD(leds_right, 0));
		setLeds(MiddleLeds, MAKE_WORD(leds_middle, 0));
		setLeds(LeftLeds, MAKE_WORD(leds_left, 0));
	}
}

void led_operation_off() {
	running = FALSE;
}

void led_operation_1() {
	leds_right = 3;
	leds_middle = 3 << 1;
	leds_left = 3;
	running = TRUE;
}
