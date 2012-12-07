
#include <kernel.h>

int main() {
	while (1) {
		regulateSpeedBackward(LeftMotor, 0xFFFF);
		regulateSpeedBackward(RightMotor, 0xFFFF);
		delay_ms(3000);
		regulateStopMotor(LeftMotor);
		regulateStopMotor(RightMotor);
		delay_ms(3000);
	}
}
