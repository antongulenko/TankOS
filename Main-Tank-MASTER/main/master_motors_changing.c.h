
#define DELAY_CHANGE _delay_ms(3000);

void regulateBoth() {
	while (1) {
		regulateSpeed(RightMotor, 0xFFFF, FORWARD);
		regulateSpeed(LeftMotor, 0xFFFF, BACKWARD);
		DELAY_CHANGE
		regulateStopMotor(RightMotor);
		regulateStopMotor(LeftMotor);
		DELAY_CHANGE
		regulateSpeed(RightMotor, 0xFFFF, BACKWARD);
		regulateSpeed(LeftMotor, 0xFFFF, FORWARD);
		DELAY_CHANGE
	}
}

void regulateOneAtATime() {
	while (1) {
		regulateSpeed(RightMotor, 0xFFFF, FORWARD);
		DELAY_CHANGE
		regulateStopMotor(RightMotor);
		DELAY_CHANGE
		regulateSpeed(RightMotor, 0xFFFF, BACKWARD);
		DELAY_CHANGE
		regulateStopMotor(RightMotor);
		DELAY_CHANGE
		
		regulateSpeed(LeftMotor, 0xFFFF, FORWARD);
		DELAY_CHANGE
		regulateStopMotor(LeftMotor);
		DELAY_CHANGE
		regulateSpeed(LeftMotor, 0xFFFF, BACKWARD);
		DELAY_CHANGE
		regulateStopMotor(LeftMotor);
		DELAY_CHANGE
	}	
}

void bothForward() {
	while (1) {
		setSpeedForward(LeftMotorBase, 0xFFFF);
		setSpeedForward(RightMotorBase, 0xFFFF);
		DELAY_CHANGE
		setSpeedBackward(LeftMotorBase, 0xFFFF);
		setSpeedBackward(RightMotorBase, 0xFFFF);
	}	
}

int main() {
	// regulateOneAtATime();
	regulateBoth();
	// bothForward();
	
	// setSpeedForward(LeftMotorBase, 0xFFFF);
	// setSpeedBackward(RightMotorBase, 0x8000);
}
