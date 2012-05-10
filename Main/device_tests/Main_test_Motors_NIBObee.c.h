
// Noch zu testen, bzw obsolete.

#define SPEED 0x005F

void controlMotor(PMotor motor, 
					PButton buttonForward, PButton buttonBackward,
					PLed forwardLed, PLed backwardLed) {
	disableLed(forwardLed);
	disableLed(backwardLed);
	if (buttonStatus(buttonForward)) {
		enableLed(forwardLed);
		setSpeedForward(motor, SPEED);
	} else if (buttonStatus(buttonBackward)) {
		enableLed(backwardLed);
		setSpeedBackward(motor, SPEED);
	} else {
		stopMotor(motor);
	}
}

int main() {
	while (1) {
		controlMotor(LeftMotor, 
			ButtonLeftForward, ButtonLeftBackward,
			LeftRed, LeftYellow);
		controlMotor(RightMotor,
			ButtonRightForward, ButtonRightBackward,
			RightRed, RightYellow);
	}
}
