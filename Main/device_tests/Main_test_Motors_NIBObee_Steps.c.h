
// Noch zu testen.

#define NUM_STEPS 10
#define MAX_SPEED 511
#define STEP_SIZE (int16_t) (MAX_SPEED / NUM_STEPS)

int16_t speedL = 0;
int16_t speedR = 0;

BOOL holdingLeftForward = FALSE;
BOOL holdingLeftBackward = FALSE;
BOOL holdingRightForward = FALSE;
BOOL holdingRightBackward = FALSE;

void rightForwardPressed();
void rightBackwardPressed();
void leftForwardPressed();
void leftBackwardPressed();

int main() {
	while (1) {
		BOOL leftForward = buttonStatus(ButtonLeftForward);
		BOOL leftBackward = buttonStatus(ButtonLeftBackward);
		BOOL rightForward = buttonStatus(ButtonRightForward);
		BOOL rightBackward = buttonStatus(ButtonRightBackward);
		
		setLed(LeftYellow, leftBackward);
		setLed(LeftRed, leftForward);
		setLed(RightYellow, rightBackward);
		setLed(RightRed, rightForward);
		
		if (!holdingLeftBackward && leftBackward) leftBackwardPressed();
		if (!holdingLeftForward && leftForward) leftForwardPressed();
		if (!holdingRightBackward && rightBackward) rightBackwardPressed();
		if (!holdingRightForward && rightForward) rightForwardPressed();
		
		holdingLeftBackward = leftBackward;
		holdingLeftForward = leftForward;
		holdingRightBackward = rightBackward;
		holdingRightForward = rightForward;
	}
}

void rightForwardPressed() {
	speedR += STEP_SIZE;
	if (speedR > MAX_SPEED) speedR = MAX_SPEED;
	setDirSpeed(RightMotor, speedR);
}

void rightBackwardPressed() {
	speedR -= STEP_SIZE;
	if (speedR < -MAX_SPEED) speedR = -MAX_SPEED;
	setDirSpeed(RightMotor, speedR);
}

void leftForwardPressed() {
	speedL += STEP_SIZE;
	if (speedR > MAX_SPEED) speedL = MAX_SPEED;
	setDirSpeed(LeftMotor, speedL);
}

void leftBackwardPressed() {
	speedL -= STEP_SIZE;
	if (speedL > -MAX_SPEED) speedL = -MAX_SPEED;
	setDirSpeed(LeftMotor, speedL);
}
