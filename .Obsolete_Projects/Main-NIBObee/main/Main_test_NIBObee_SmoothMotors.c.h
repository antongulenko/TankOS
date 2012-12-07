
// Noch zu testen

#include <misc/read_buttons_loop.h>

#define SPEED 0x0FFF

int main() {
	// PButton allButtons[] = { ButtonLeftBackward, ButtonLeftForward, ButtonRightBackward, ButtonRightForward };
	// read_buttons_loop(4, allButtons);
	
	// blink_reset_condition_byte(AllLeds, YellowLeds);
	
	
	
	regulateSpeedBackward(LeftMotor, SPEED);
	delay_ms(2000);
	regulateSpeedForward(LeftMotor, SPEED);
	
	
	blinkLed(RightRed, 5);
	while (1) ;
}

void button_pressed(PButton button) {
	if (button == ButtonLeftBackward) {
		flashLed(LeftYellow, 300);
		regulateSpeedBackward(LeftMotor, SPEED);
	}	
	if (button == ButtonLeftForward) {
		flashLed(LeftRed, 300);
		regulateSpeedForward(LeftMotor, SPEED);
	}	
	if (button == ButtonRightBackward) {
		flashLed(RightYellow, 300);
		regulateSpeedBackward(RightMotor, SPEED);
	}	
	if (button == ButtonRightForward) {
		flashLed(RightRed, 300);
		regulateSpeedForward(RightMotor, SPEED);
	}
}
