
#include <kernel.h>

// This main must be used, when not using a command-queue to handle TWI requests,
// and also not using pin-change interrupts to update the button status.

int main() {
	while (1) {
		updateButtonStatus();
	}
}
