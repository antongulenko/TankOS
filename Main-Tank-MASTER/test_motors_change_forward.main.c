
#include <kernel.h>

int main() {
	uint16_t speed = 300;
	while (1) {
		setSpeedForward(LeftMotorBase, speed);
		setSpeedForward(RightMotorBase, speed);
		speed += 13; // 0 to 0xFFFF in ca 5 seconds (excl. computation)
		delay_ms(1);
	}
}
