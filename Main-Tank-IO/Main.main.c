
#define USE_TWI
#include <kernel.h>

// There are several configurations for this main:
// - With command queue
//		- sleep-command-queue + Pin-change-interrupt
//		- loop-command-queue + Pin-change-interrupt
//		- loop-command-queue + updateButtonStatus inside_command_queue
// - Without command queue
//		- Pin-change-interrupt (-> main just exits)
//		- loop-button-updates

// For Pin-change-interrupt, define FORCE_BUTTON_PIN_CHANGE_INTERRUPTS in kernel.h
// For command-queue, define TWI_COMMAND_QUEUE in kernel.h
// For sleep-command-queue, additionally define TWI_COMMAND_QUEUE_SLEEP

#ifndef FORCE_BUTTON_PIN_CHANGE_INTERRUPTS
// If we dont idle, and use the non-sleeping command-queue,
// we have to update the buttons in that queue.
void inside_command_queue_loop() {
	updateButtonStatus();
}
#endif

int main() {
	#ifdef TWI_COMMAND_QUEUE
		loopCommandQueue();
	#else
		#ifndef FORCE_BUTTON_PIN_CHANGE_INTERRUPTS
			while (1) updateButtonStatus();
		#endif
	#endif
}
