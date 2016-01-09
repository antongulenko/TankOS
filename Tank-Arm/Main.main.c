
#include "example.h"
#include <devices/led.h>
#include <platform/platform_Avr/port.h>

#include <stdio.h>

Led ledFront;
Led ledBack;
Led ledEnc;

static void loopleds() {
	BOOL on = TRUE;
	for (int i = 0; i < 3; i++) {
		setLed(ledFront, on);
		setLed(ledBack, !on);
		setLed(ledEnc, on);
		on = !on;
		delay_ms(30);
		// for (int j = 0; j < 2; j++) {
			// delay_us(10);
		// }
	}
}

static void init() {
	stepMotorSetMaxSpeed(tank_joint.motor, 3000);

	DDRC |= 0b11111100;

	ledFront = newLed(pinC7);
	ledBack = newLed(pinC6);
	ledEnc = newLed(pinC5);

	printf("OK:%i,%i,%i,%i,%i,%i\n", IsValid(tank_socket.back),
		IsValid(tank_socket.front),
		IsValid(tank_socket.encoder),
		IsValid(ledFront),
		IsValid(ledBack),
		IsValid(ledEnc));

	loopleds();
}

int test_motors_main() {
	init();
	while (1) {
		stepMotorRotate(tank_joint.motor, MotorForward);
		delay_ms(500);
		stepMotorRotate(tank_joint.motor, MotorBackward);
		delay_ms(500);
	}
}

int main() {
	init();

	calibrateTankArm(&tank_joint);
	//disableStepMotor(tank_joint.motor);

	while (1) {
		setLed(ledFront, hallSensorState(tank_joint.front));
		setLed(ledBack, hallSensorState(tank_joint.back));

		if (tank_joint.calibration == CalibratingSecond || tank_joint.calibration == CalibratedFull) {
			enableLed(ledEnc);
		} else {
			disableLed(ledEnc);
		}
	}
}

int test_hall_encoder_main() {
	init();
	while (1) {
		BOOL back = hallSensorState(tank_socket.back);
		BOOL front = hallSensorState(tank_socket.front);
		setLed(ledBack, !back);
		setLed(ledFront, !front);

		encoder_pos_t pos = encoderState(tank_socket.encoder);
		PORTC &= 0b11000011;
		PORTC |= ((uint8_t) pos << 2) & 0b00111100;
	}
}
