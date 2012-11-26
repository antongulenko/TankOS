
#include <kernel.h>

// TODO -- hack, this is unfinished. BUTTON_SWITCH does not exist anymore.
#define BUTTON_SWITCH BUTTON_1

#define NUM_STEPS 10
#define STEP ((uint16_t) 0xFFFF / NUM_STEPS)

int main() {
	uint16_t speedLeft = 0;
	uint16_t speedRight = 0;
	while (1) {
		uint8_t buttons = tankIO_pressedButtons();
		if (buttons & BUTTON_1) {
			if (speedLeft <= 0xFFFF - STEP) {
				speedLeft += STEP;
			} else {
				speedLeft = 0xFFFF;
			}
		} else if (buttons & BUTTON_2) {
			if (speedLeft >= STEP) {
				speedLeft -= STEP;
			} else {
				speedLeft = 0;
			}
		}
		if (buttons & BUTTON_3) {
			if (speedLeft <= 0xFFFF - STEP) {
				speedLeft += STEP;
			} else {
				speedLeft = 0xFFFF;
			}
		} else if (buttons & BUTTON_4) {
			if (speedLeft >= STEP) {
				speedLeft -= STEP;
			} else {
				speedLeft = 0;
			}
		}
		
		MotorDirection dir;
		if (buttons & BUTTON_SWITCH) {
			dir = FORWARD;
		} else {
			dir = BACKWARD;
		}
		
		regulateSpeed(LeftMotor, speedLeft, dir);
		regulateSpeed(RightMotor, speedRight, dir);
	}
}
