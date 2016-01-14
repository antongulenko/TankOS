
#include "example.h"
#include <devices/led.h>
#include <platform/platform_Avr/port.h>

#include <twi/twi_sniffer.h>
#include <stdio.h>
#include <kernel/millisecond_clock.h>

// #define sniff_main main
#define test_main main

Led led1;
Led led2;
Led led3;

static void initleds() {
	led1 = newLed(pinC7);
	led2 = newLed(pinC6);
	led3 = newLed(pinC5);
}

static void loopleds(uint8_t num) {
	BOOL on = TRUE;
	for (uint8_t i = 0; i < num; i++) {
		setLed(led1, on);
		setLed(led2, !on);
		setLed(led3, on);
		on = !on;
		
		wait_milliseconds(250);
		// delay_ms(250);
	}
}

int test_main() {
	initleds();
	loopleds(4);
	enableLed(led1);
	enableLed(led2);
	enableLed(led3);
	while (1) ;
	return 0;
}

static BOOL sda;
static BOOL scl;
static void updated_sda(BOOL up) {
	printf("%li: D %i\n", get_milliseconds_running(), up);
	if (up) {
		sda = !sda;
		setLed(led1, sda);
	}
}
static void updated_scl(BOOL up) {
	printf("%li: C %i\n", get_milliseconds_running(), up);
	if (up) {
		scl = !scl;
		setLed(led2, scl);
	}
}

int sniff_main() {
	initleds();
	loopleds(4);
	disableLed(led1);
	disableLed(led2);
	disableLed(led3);

	#define PIN_SDA pinC1
	#define PIN_SCL pinC0
	sniff_twi_updates(PIN_SDA, PIN_SCL, 2, 1, 0, updated_sda, updated_scl);

	return 0;
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

	loopleds(4);
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
