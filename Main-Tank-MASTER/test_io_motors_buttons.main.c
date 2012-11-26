
#include <kernel.h>

int main() {
	while (1) {
		uint8_t buttons = tankIO_pressedButtons();
		if (buttons & BUTTON_SWITCH) {
			if (buttons & BUTTON_1) {
				regulateSpeedForward(LeftMotor, 0xFFFF);
			} else if (buttons & BUTTON_2) {
				regulateSpeedBackward(LeftMotor, 0xFFFF);
			}
			if (buttons & BUTTON_3) {
				regulateSpeedForward(LeftMotor, 0xFFFF);
			} else if (buttons & BUTTON_4) {
				regulateSpeedBackward(LeftMotor, 0xFFFF);
			}
		} else {
			regulateStopMotor(LeftMotor);
			regulateStopMotor(RightMotor);
		}
	}
}