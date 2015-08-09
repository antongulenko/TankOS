
#include <kernel.h>

#include "LedOperations.h"

// #define USE_ISR
#define TICK_AFTER_MS 300

void run_leds() {
	int i = 0;
	while (1) {
		flashLed(allLeds->leds[i], 500);
		i++;
		i %= allLeds->count;
	}
}

void leds_special() {
	led_operation_1();
	#ifndef USE_ISR
		while (1) {
			delay_ms(TICK_AFTER_MS);
			led_operation_tick();
		}
	#endif
}

void test_buttons() {
	while (1) {
		setLeds(allLeds, AS_WORD(buttonStatusMask(buttons)));
	}
}

void all_leds() {
	enableLeds(allLeds);
}

void test_communication_raw();
void test_communication_raw_steer_motors();

int main() {
	//run_leds();
	// leds_special(); // Maybe run this also with USE_ISR.
	//test_buttons();

	// test_communication_raw();
	test_communication_raw_steer_motors();
}

#ifdef USE_ISR
uint16_t ticks = 0;
INTERRUPT_HANDLER(CLOCKISR_B) {
	ticks++;
	if (ticks % TICK_AFTER_MS)
		led_operation_tick();
}
#endif

void test_communication_raw() {

	DDRD = 0xff;
	DDRB = 0xff;
	DDRC = 0;

	PORTD = 0xff;
	PORTB = 0xff;

	while (1) {
		uint8_t c = PINC;
		uint8_t c0 = (c & (1 << PINC0)) != 0;
		uint8_t c1 = (c & (1 << PINC1)) != 0;
		if (c0) {
			PORTB = 0xff;
		} else {
			PORTB = 0;
		}
		if (c1) {
			PORTD = 0xff;
		} else {
			PORTD = 0;
		}
	}
}

void test_communication_raw_steer_motors() {
	DDRC |= _BV(DDC0) | _BV(DDC1); // set as output
	while (1) {
		uint8_t p = PORTC;

		if (buttonStatus(button1)) {
			p |= (1 << PORTC0);
			enableLeds(leftLeds);
		} else {
			p &= ~(1 << PORTC0);
			disableLeds(leftLeds);
		}

		if (buttonStatus(button2)) {
			p |= (1 << PORTC1);
			enableLeds(rightLeds);
		} else {
			p &= ~(1 << PORTC1);
			disableLeds(rightLeds);
		}

		PORTC = p;
	}

}
