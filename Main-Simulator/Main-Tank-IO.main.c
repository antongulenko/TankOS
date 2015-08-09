
#include <devices/button.h>
#include "../Kernel-Tank-IO/tank_button.h"
#include "../Kernel-Tank-IO/tank_led.h"

void pressed(Button b) {
	printf("pressed\n");
}

void released(Button b) {
	printf("released\n");
}

int main(void) {
    buttonPressedCallback = pressed;
	buttonReleasedCallback = released;
	while (1) {
		updateButtonStatus(button1);
	}
}
