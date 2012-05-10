
// Noch zu testen

#include <misc/read_buttons_loop.h>

int main() {
	PButton allButtons[] = { ButtonLeftBackward, ButtonLeftForward, ButtonRightBackward, ButtonRightForward };
	read_buttons_loop(4, allButtons);
}

#define SPEED 0x00FF

void button_pressed(PButton button) {
	if (button == ButtonLeftBackward) {
		regulateSpeedBackward(LeftMotor, SPEED);
	}	
	if (button == ButtonLeftForward) {
		regulateSpeedForward(LeftMotor, SPEED);
	}	
	if (button == ButtonRightBackward) {
		regulateSpeedBackward(RightMotor, SPEED);
	}	
	if (button == ButtonRightForward) {
		regulateSpeedForward(RightMotor, SPEED);
	}
}
