
#include "example.h"
#include <devices/led.h>
#include <platform/platform_Avr/port.h>

#include <stdio.h>
#include <kernel/millisecond_clock.h>

Led led1;
Led led2;
Led led3;

static void initleds() {
	led1 = newLed(pinC7);
	led2 = newLed(pinC6);
	led3 = newLed(pinC5);
}

static void loopleds() {
	BOOL on = TRUE;
	for (uint8_t i = 0; i < 10; i++) {
		setLed(led1, on);
		setLed(led2, !on);
		setLed(led3, on);
		on = !on;
		
		// wait_milliseconds(200);
		delay_ms(200);
		
		// for (int j = 0; j < 2; j++) {
			// delay_us(10);
		// }
	}
}

int main() {
	initleds();
	loopleds();
	disableLed(led1);
	disableLed(led2);
	disableLed(led3);
}

static void init() {
	initleds();
	stepMotorSetMaxSpeed(tank_joint.motor, 3000);

	DDRC |= 0b11111100;

	printf("OK:%i,%i,%i,%i,%i,%i\n", IsValid(tank_socket.back),
		IsValid(tank_socket.front),
		IsValid(tank_socket.encoder),
		IsValid(led1),
		IsValid(led2),
		IsValid(led3));

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

int tank_calibrate_main() {
	init();

	calibrateTankArm(&tank_joint);
	//disableStepMotor(tank_joint.motor);

	while (1) {
		setLed(led1, hallSensorState(tank_joint.front));
		setLed(led2, hallSensorState(tank_joint.back));

		if (tank_joint.calibration == CalibratingSecond || tank_joint.calibration == CalibratedFull) {
			enableLed(led3);
		} else {
			disableLed(led3);
		}
	}
}

int test_hall_encoder_main() {
	init();
	while (1) {
		BOOL back = hallSensorState(tank_socket.back);
		BOOL front = hallSensorState(tank_socket.front);
		setLed(led2, !back);
		setLed(led1, !front);

		encoder_pos_t pos = encoderState(tank_socket.encoder);
		PORTC &= 0b11000011;
		PORTC |= ((uint8_t) pos << 2) & 0b00111100;
	}
}
