
#include <kernel.h>

#define FORWARD_TIME 3000
#define MAX_SPEED 0x0FFF
#define TURN_180_time 2000
#define TURN_90_time 1000

typedef enum {
	NO_COMMAND = 0,
	FORW,
	BACKW,
	RIGHT,
	LEFT
} Command;

#define COMMAND_SIZE 1024
Command commands[COMMAND_SIZE] = {0};
uint16_t nextCommand = 0;

uint16_t commandQueueFilled = 0;
#include <util/delay.h>

void updateLeds() {
	tankIO_setLeds((MaskedLeds) { LEDS_ALL, commandQueueFilled } );
}

void blinkAll(uint16_t num) {
	tankIO_blinkAllLeds((BlinkAllLedsParam) { LEDS_ALL, num } );
}

void addCommand(Command com) {
	commands[nextCommand++] = com;
	commandQueueFilled = commandQueueFilled << 1;
	commandQueueFilled |= 1;
	updateLeds();
}

void executeCommand(Command com) {
	commandQueueFilled = commandQueueFilled >> 1;
	updateLeds();
	
	switch(com) {
		case FORW:
			_delay_ms(FORWARD_TIME);
			break;
		case BACKW:
			regulateSpeedBackward(LeftMotor, MAX_SPEED);
			regulateSpeedForward(RightMotor, MAX_SPEED);
			_delay_ms(TURN_180_time);
			regulateSpeedForward(LeftMotor, MAX_SPEED);
			break;
		case RIGHT:
			regulateSpeedForward(LeftMotor, MAX_SPEED);
			regulateSpeedBackward(RightMotor, MAX_SPEED);
			_delay_ms(TURN_90_time);
			regulateSpeedForward(RightMotor, MAX_SPEED);
			break;
		case LEFT:
			regulateSpeedBackward(LeftMotor, MAX_SPEED);
			regulateSpeedForward(RightMotor, MAX_SPEED);
			_delay_ms(TURN_90_time);
			regulateSpeedForward(LeftMotor, MAX_SPEED);
			break;
		case NO_COMMAND: // Should not happen.
			break;
	}
}

void reset() {
	for (int i = 0; i < COMMAND_SIZE; i++) {
		commands[i] = NO_COMMAND;
	}
	commandQueueFilled = 0;
	nextCommand = 0;
	regulateStopMotor(LeftMotor);
	regulateStopMotor(RightMotor);
	blinkAll(4);
}

void executeCommands() {
	if (nextCommand == 0) return;
	blinkAll(3);
	
	while (nextCommand) {
		nextCommand--;
		executeCommand(commands[nextCommand]);
	}
}

int main() {
	while (!tankIO_isInitialized()) _delay_ms(20);
	
	reset();
	while (1) {
		uint8_t buttons = tankIO_pressedButtons();
		if (buttons && BUTTON_1) {
			addCommand(FORW);
		}
		if (buttons && BUTTON_2) {
			addCommand(LEFT);
		}
		if (buttons && BUTTON_3) {
			addCommand(RIGHT);
		}
		if (buttons && BUTTON_4) {
			addCommand(BACKW);
		}
		if (buttons && BUTTON_SWITCH) {
			executeCommands();
			reset();
		}
	}		
}
