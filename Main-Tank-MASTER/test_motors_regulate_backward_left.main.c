
#include <kernel.h>

int main() {
	while (1) {
		regulateSpeedBackward(LeftMotor, 0xFFFF);
		delay_ms(3000);
		regulateStopMotor(LeftMotor);
		delay_ms(3000);
	}
}
