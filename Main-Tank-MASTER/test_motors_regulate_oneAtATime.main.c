
#include <kernel.h>

int main() {
	while (1) {
		regulateSpeed(RightMotor, 0xFFFF, FORWARD);
		delay_ms(3000);
		regulateStopMotor(RightMotor);
		delay_ms(3000);
		regulateSpeed(RightMotor, 0xFFFF, BACKWARD);
		delay_ms(3000);
		regulateStopMotor(RightMotor);
		delay_ms(3000);
		
		regulateSpeed(LeftMotor, 0xFFFF, FORWARD);
		delay_ms(3000);
		regulateStopMotor(LeftMotor);
		delay_ms(3000);
		regulateSpeed(LeftMotor, 0xFFFF, BACKWARD);
		delay_ms(3000);
		regulateStopMotor(LeftMotor);
		delay_ms(3000);
	}
}
