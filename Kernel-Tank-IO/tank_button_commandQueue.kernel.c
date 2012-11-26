
#include "tank_button.h"

// If we don't idle, and use the non-sleeping command-queue,
// we have to update the buttons in that queue.
void inside_command_queue_loop() {
	updateButtonStatus();
}
