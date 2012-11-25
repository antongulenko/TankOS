
#include <kernel.h>

int main() {
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
