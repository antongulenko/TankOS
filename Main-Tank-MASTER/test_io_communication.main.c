
#include <kernel.h>

void testStatus() {
	while (1) {
		byte btns = tankIO_buttonStatus();
		uint16_t buttons = AS_WORD(btns << 3);
		tankIO_setLeds((MaskedLeds) { LEDS_LEFT, buttons});
		tankIO_setLeds((MaskedLeds) { LEDS_MIDDLE, buttons});
		tankIO_setLeds((MaskedLeds) { LEDS_RIGHT, buttons});
	}
}

void testPressed() {
	while (1) {
		byte btns = tankIO_pressedButtons();
		uint16_t buttons = AS_WORD(btns << 3);
		tankIO_setLeds((MaskedLeds) { LEDS_LEFT, buttons});
		tankIO_setLeds((MaskedLeds) { LEDS_MIDDLE, buttons});
		tankIO_setLeds((MaskedLeds) { LEDS_RIGHT, buttons});
	}
}

void test_communication_raw();
void test_communication_raw_steer_motors();

int main() {
	// testStatus();
	// testPressed();
	// test_communication_raw();
	// test_communication_raw_steer_motors();
}

void test_communication_raw() {
	
	DDRC = 0xff;
	uint8_t b = 0;
	
	while (1) {
		if (b) {
			PORTC = ~(1 << PORTC0);
			b = 0;
		} else {
			PORTC = ~(1 << PORTC1);
			b = 1;
		}
		delay(2000);
	}
	
}

void test_communication_raw_steer_motors() {
	DDRC &= ~(_BV(DDC0) | _BV(DDC1)); // set as input
	while (1) {
		uint8_t c = PINC;
		uint8_t c0 = (c & (1 << PINC0)) != 0;
		uint8_t c1 = (c & (1 << PINC1)) != 0;
		if (c0) {
			regulateStopMotor(LeftMotor);
		} else {
			regulateSpeedForward(LeftMotor, 0xFFFF);
		}			
		if (c1) {
			regulateStopMotor(RightMotor);
		} else {
			regulateSpeedForward(RightMotor, 0xFFFF);
		}
	}
	
}
