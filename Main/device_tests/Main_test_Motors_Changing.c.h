
// Obsolete.

#define CHANGE_INTERVAL 3000 // ms
#define SPEED 0xFFFF
uint32_t nextChanging = 0;
byte direction = 0;

int main() {
	while (1) {
		_delay_ms(CHANGE_INTERVAL);
		if (direction == 0) {
			stopMotor(LeftMotor);
			stopMotor(RightMotor);
			direction = 1;
		} else if(direction == 1) {
			setSpeedForward(LeftMotor, SPEED);
			setSpeedForward(RightMotor, SPEED);
			direction = 2;
		} else {
			setSpeedBackward(LeftMotor, SPEED);
			setSpeedBackward(RightMotor, SPEED);
			direction = 0;
		}
	}	
}
