
#include "example.h"
#include <devices/led.h>
#include <platform/platform_Avr/port.h>

#include <stdio.h>

Led ledFront;
Led ledBack;
Led ledEnc;

int main() {
	tank_arm.back = newHallSensor(1, 0, pinB0);
	tank_arm.front = newHallSensor(1, 1, pinB1);
	tank_arm.encoder = newEncoder(3, 0, 1, pinD0, pinD1);

	DDRC = 0xff;

	ledFront = newLed(pinC7);
	ledBack = newLed(pinC6);
	ledEnc = newLed(pinC5);

	newLed(pinC0);
	newLed(pinC1);

	printf("OK:%i,%i,%i,%i,%i,%i\n", IsValid(tank_arm.back),
		IsValid(tank_arm.front),
		IsValid(tank_arm.encoder),
		IsValid(ledFront),
		IsValid(ledBack),
		IsValid(ledEnc));

	BOOL on = TRUE;
	for (int i = 0; i < 10; i++) {
		setLed(ledFront, on);
		setLed(ledBack, !on);
		setLed(ledEnc, on);
		on = !on;
		delay_ms(200);
	}

	while (1) {
		BOOL back = hallSensorState(tank_arm.back);
		BOOL front = hallSensorState(tank_arm.front);
		setLed(ledBack, back);
		setLed(ledFront, front);

		encoder_pos_t pos = encoderState(tank_arm.encoder);
		PORTC &= 0b11000000;
		PORTC |= ((uint8_t) pos) & 0b00111111;
	}
}
