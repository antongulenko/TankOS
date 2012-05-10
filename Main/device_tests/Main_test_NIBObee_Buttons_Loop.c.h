
// Noch zu testen

#include <misc/read_buttons_loop.h>

int main() {
	PButton allButtons[] = { ButtonLeftBackward, ButtonLeftForward, ButtonRightBackward, ButtonRightForward };
	read_buttons_loop(4, allButtons);
}

void button_released(PButton button) {
	if (button == ButtonLeftBackward) {
		disableLed(LeftYellow);
	}	
	if (button == ButtonLeftForward) {
		disableLed(LeftRed);
	}	
	if (button == ButtonRightBackward) {
		disableLed(RightYellow);
	}	
	if (button == ButtonRightForward) {
		disableLed(RightRed);
	}
}

void button_pressed(PButton button) {
	if (button == ButtonLeftBackward) {
		enableLed(LeftYellow);
	}	
	if (button == ButtonLeftForward) {
		enableLed(LeftRed);
	}	
	if (button == ButtonRightBackward) {
		enableLed(RightYellow);
	}	
	if (button == ButtonRightForward) {
		enableLed(RightRed);
	}
}
