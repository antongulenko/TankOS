
#include <kernel.h>

int main() {
	uint16_t speed;
	const MotorDirection dir = FORWARD;
	while (1) {
		speed = 13071; // 1/5
		setSpeed(LeftMotorBase, speed, dir);
		setSpeed(RightMotorBase, speed, dir);
		_delay_ms(1500);
		speed = 26142; // 2/5
		setSpeed(LeftMotorBase, speed, dir);
		setSpeed(RightMotorBase, speed, dir);
		_delay_ms(1500);
		speed = 39213; // 3/5
		setSpeed(LeftMotorBase, speed, dir);
		setSpeed(RightMotorBase, speed, dir);
		_delay_ms(1500);
		speed = 52284; // 4/5
		setSpeed(LeftMotorBase, speed, dir);
		setSpeed(RightMotorBase, speed, dir);
		_delay_ms(1500);
		speed = 65355; // bit less than 5/5
		setSpeed(LeftMotorBase, speed, dir);
		setSpeed(RightMotorBase, speed, dir);
		_delay_ms(1500);
		speed = 65535; // 5/5
		setSpeed(LeftMotorBase, speed, dir);
		setSpeed(RightMotorBase, speed, dir);
		_delay_ms(1500);
	}
}
