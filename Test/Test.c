/*
 * Test.c
 *
 * Created: 16.05.2012 19:47:44
 *  Author: Anton
 */ 


#include <avr/io.h>
#include <util/delay.h>

void testTankButtons();
void testTankLeds();
void testTankLedsBlink();

#define MIN 410 // 2V
#define MAX 922 // 4,5V
void setupMotors(uint16_t intialValue);
void testMotorsSmooth();

int main(void) {
	setupMotors(1024);
	testMotorsSmooth();
}

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

void testMotorsSmooth() {
	int up = 1;
	uint16_t a = MAX;
	uint16_t b = MAX;
	while (1) {
		if (up) {
			a--; b--;
		} else {
			a++; b++;
		}
		OCR1A = a;
		OCR1B = b;
		_delay_ms(1);
		if (a > MAX) {
			up = 1; a = b = MAX;
		}
		if (a < MIN) {
			up = 0; a = b = MIN;
		}
	}	
}

void testTankLedsBlink() {
	DDRA = 0xFF;
	DDRD = 0xFF & ~(1 << PORTD7);
	while (1) {
		PORTA ^= 0xFF;
		PORTD = (PORTD ^ 0xFF) & ~(1 << PORTD7);
		_delay_ms(1000);
	}
}

void testTankLeds() {
	DDRA = 0xFF;
	DDRD = 0xFF & ~(1 << PORTD7);
	while (1) {
		PORTA = 0xFF;
		PORTD = 0xFF & ~(1 << PORTD7);
	}
}

void testTankButtons() {
	DDRA = 0;
	DDRB = 0xFF;
	DDRD = 0xFF & ~(1 << PORTD7);
	DDRC = 0;
	PORTA = 0;
	PORTD = 0 | (1 << PORTD7);
	PORTC = (1 << PORTC2) | (1 << PORTC3) | (1 << PORTC4)
				| (1 << PORTC5);
	while (1) {
		uint8_t btns = 0;
		uint8_t pinc = PINC;
		uint8_t pind = PIND;
		if (!(pinc & (1 << PINC5)))
			btns |= (1 << PORTD0);
		if (!(pinc & (1 << PINC4)))
			btns |= (1 << PORTD1);
		if (!(pinc & (1 << PINC3)))
			btns |= (1 << PORTD2);
		if (!(pinc & (1 << PINC2)))
			btns |= (1 << PORTD3);
		if (!(pind & (1 << PIND7)))
			btns |= (1 << PORTD4);
		
		PORTD = btns | (1 << PORTD7);
	}	
}