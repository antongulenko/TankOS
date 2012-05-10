
// Noch zu testen

#include <misc/read_buttons_loop.h>

int main() {
	PButton allButtons[] = { ButtonLeftBackward, ButtonLeftForward, ButtonRightBackward, ButtonRightForward };
	read_buttons_loop(allButtons, 4);
}

#define MIN_INT 0x8000
#define MAX_INT 0x7FFF
#define STEP 10000
int16_t speedLeft = 0;
int16_t speedRight = 0;

void button_pressed(PButton button) {
	if (button == ButtonLeftBackward) {
		if (MIN_INT + STEP > speedLeft)
			speedLeft = MIN_INT;
		else
			speedLeft -= STEP;
		regulateDirSpeed(LeftMotor, speedLeft);
	}
	if (button == ButtonLeftForward) {
		if (MAX_INT - STEP < speedLeft)
			speedLeft = MAX_INT;
		else
			speedLeft += STEP;
		regulateDirSpeed(LeftMotor, speedLeft);
	}
	if (button == ButtonRightBackward) {
		if (MIN_INT + STEP > speedRight)
			speedRight = MIN_INT;
		else
			speedRight -= STEP;
		regulateDirSpeed(RightMotor, speedRight);
	}
	if (button == ButtonRightForward) {
		if (MAX_INT - STEP < speedRight)
			speedRight = MAX_INT;
		else
			speedRight += STEP;
		regulateDirSpeed(RightMotor, speedRight);
	}
}
