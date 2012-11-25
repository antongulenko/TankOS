
#include <kernel.h>

int main() {
	while (1) {
		regulateSpeedForward(LeftMotor, 0xFFFF);
		_delay_ms(3000);
		regulateStopMotor(LeftMotor);
		_delay_ms(3000);
	}
}
