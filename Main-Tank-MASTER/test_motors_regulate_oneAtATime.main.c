
#include <kernel.h>

int main() {
	while (1) {
		regulateSpeed(RightMotor, 0xFFFF, FORWARD);
		_delay_ms(3000);
		regulateStopMotor(RightMotor);
		_delay_ms(3000);
		regulateSpeed(RightMotor, 0xFFFF, BACKWARD);
		_delay_ms(3000);
		regulateStopMotor(RightMotor);
		_delay_ms(3000);
		
		regulateSpeed(LeftMotor, 0xFFFF, FORWARD);
		_delay_ms(3000);
		regulateStopMotor(LeftMotor);
		_delay_ms(3000);
		regulateSpeed(LeftMotor, 0xFFFF, BACKWARD);
		_delay_ms(3000);
		regulateStopMotor(LeftMotor);
		_delay_ms(3000);
	}
}
