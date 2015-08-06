
#include "util.h"

int16_t randomSpeed() {
	// Min speed 20%: 13107
	int16_t speed = rand() % (0xFFFF - 13107) + 13107;
	if (rand() > (RAND_MAX / 2)) speed *= -1;
	return speed;
}

void seed() {
	srand(24593);
}

DEFINE_MOTOR_2Speed_IMPL(FakeMotor)

void init_fake_motor() {
	INIT_MOTOR_2Speed(FakeMotor, MOTOR_NORMAL, Timer2A, Timer2B)
}

uint8_t ana_result = 0;
volatile BOOL ana_res_ready = FALSE;

void ana_callback(uint8_t result) {
	ana_result = result;
	ana_res_ready = TRUE;
}

BOOL ana_read(AnalogInput input) {
	return analogReadLoop(input, &ana_result);
}

BOOL ana_read_interrupt(AnalogInput input) {
	ana_res_ready = FALSE;
	if (!analogRead(input, ana_callback)) return FALSE;
	while (!ana_res_ready) ;
	return TRUE;
}
