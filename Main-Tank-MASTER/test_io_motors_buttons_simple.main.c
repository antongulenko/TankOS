
#include <kernel.h>

// TODO -- hack, this is unfinished. BUTTON_SWITCH does not exist anymore.
#define BUTTON_SWITCH BUTTON_1

MotorDirection left, right;

void setupMotors(uint16_t initialValue) {
	DDRD = 0xFF;
	DDRC = 0xFF;
	
	PORTC = (1 << PORTC4) | (1 << PORTC2);
	
	OCR1A = initialValue;
	OCR1B = initialValue;
	
	TCCR1A = (1 << COM1A1) | (1 << COM1B1) |
			(1 << WGM11) |
			(1 << WGM10);
	TCCR1B = (1 << CS10);
}

int main() {
	tankIO_wait();
	left = right = MotorStopped;
	while (1) {
		uint8_t btns = tankIO_buttonStatus();
		if (btns & BUTTON_SWITCH) {
			MotorDirection newLeft, newRight;
			if (btns | BUTTON_1) 
				newLeft = MotorForward;
			else if (btns | BUTTON_2)
				newLeft = MotorBackward;
			if (btns | BUTTON_3)
				newRight = MotorForward;
			else if (btns | BUTTON_4)
				newRight = MotorBackward;
			
			if (newRight == MotorForward) {
				PORTC |= _BV(PORTC2);
				PORTC &= ~_BV(PORTC3);
			} else if (newRight == MotorBackward) {
				PORTC |= _BV(PORTC3);
				PORTC &= ~_BV(PORTC2);
			}
			if (newLeft == MotorForward) {
				PORTC |= _BV(PORTC4);
				PORTC &= ~_BV(PORTC5);
			} else if (newLeft == MotorBackward) {
				PORTC |= _BV(PORTC5);
				PORTC &= ~_BV(PORTC4);
			}
			
			left = newLeft;
			right = newRight;
		} else {
			PORTC &= ~(_BV(PORTC2) | _BV(PORTC3) | _BV(PORTC4) | _BV(PORTC5));
		}
	}
	
}
