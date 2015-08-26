
#include "LedOperations.h"
#define TIMEOUT 33

void leds_run() {
	for (int i = 0; i < allLeds->count; i++) {
		flashLed(allLeds->leds[i], TIMEOUT);
	}
	for (int i = allLeds->count - 2; i >= 0; i--) {
		flashLed(allLeds->leds[i], TIMEOUT);
	}
}

void leds_run_arrow() {
    // Rotate left, inserting removed bits on the right.
    #define ROL(data) data=(data<<1)|(data>>7)
    #define TIMES 15

    uint16_t leds_right = 3;
	uint16_t leds_middle = 3 << 1;
	uint16_t leds_left = 3;
    for (int i = 0; i < TIMES; i++) {
		ROL(leds_left);
		ROL(leds_middle);
		ROL(leds_right);
		setLeds(rightLeds, MAKE_WORD(leds_right, 0));
		setLeds(middleLeds, MAKE_WORD(leds_middle, 0));
		setLeds(leftLeds, MAKE_WORD(leds_left, 0));
        delay_ms(TIMEOUT);
	}
}
