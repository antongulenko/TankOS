
#include <tank_os_common.h>
#include <platform/platform_Avr/buffer_stdout.h>
#include "tank_motor.h"

int main() {
}

void motor_test() {
	regulateSpeedBackward(leftMotor, 0xffff);
	regulateSpeedBackward(rightMotor, 0xffff);
	delay_ms(2000);
	while (1) {
		regulateSpeedForward(leftMotor, 0xffff);
		delay_ms(3500);
		regulateSpeedBackward(leftMotor, 0xffff);
		delay_ms(3500);
	}
}
