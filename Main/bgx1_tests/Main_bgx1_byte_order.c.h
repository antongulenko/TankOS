
// Läuft. Ergebnis ist, dass lokal tatsächlich alles big-endian vorliegt.

#include <util/delay.h>
#include <misc/read_buttons_loop.h>
#include <stdio.h>
#include <util/twi.h>

void testEndianness() {
	uint16_t value = 0x8001; // 0b1000...0001
	uint8_t at0 = ((uint8_t*) &value)[0]; // Should be 128
	uint8_t at1 = ((uint8_t*) &value)[1]; // Should be 1
	
	char text[30];
	// Print the 16-bit things
	sprintf(text, "[0]: %i", at0);
	bgx1_termGoto(10, 5);
	bgx1_termPrint(text);
	sprintf(text, "[1]: %i", at1);
	bgx1_termGoto(10, 6);
	bgx1_termPrint(text);
	
	uint32_t value2 = 0x80C0E0F0;
	at0 = ((uint8_t*) &value2)[0]; // Should be 128
	at1 = ((uint8_t*) &value2)[1]; // Should be 192
	uint8_t at2 = ((uint8_t*) &value2)[2]; // Should be 224
	uint8_t at3 = ((uint8_t*) &value2)[3]; // Should be 240
	
	// Print the 32-bit things
	sprintf(text, "[0]: %i", at0);
	bgx1_termGoto(10, 9);
	bgx1_termPrint(text);
	sprintf(text, "[1]: %i", at1);
	bgx1_termGoto(10, 10);
	bgx1_termPrint(text);
	
	sprintf(text, "[2]: %i", at2);
	bgx1_termGoto(10, 11);
	bgx1_termPrint(text);
	sprintf(text, "[3]: %i", at3);
	bgx1_termGoto(10, 12);
	bgx1_termPrint(text);
}

void testIllumination() {
	// On 256 and multiples of that value, the display goes dark.
	// All other values cause maximal (?) illumination.
	uint16_t val = 0xFFFF;
	char text[30];
	while (1) {
		bgx1_move(10, 10);
		bgx1_setIllumination(val);
		sprintf(text, "%u", val);
		bgx1_print(text);
		_delay_ms(1);
		val--;
	}
}

char text[60];

void testMotorsOnDisplay() {
	while (1) {
		uint8_t btns = bgx1_syncInterface(0);
		if (btns & BGX1_BTN_1)
			regulateSpeedForward(LeftMotor, 0xFFFF);
		if (btns & BGX1_BTN_2)
			regulateSpeedBackward(LeftMotor, 0xFFFF);
		if (btns & BGX1_BTN_3)
			regulateSpeedForward(RightMotor, 0xFFFF);
		if (btns & BGX1_BTN_4)
			regulateSpeedBackward(RightMotor, 0xFFFF);
		
		bgx1_reset();
		
		sprintf(text, "Left: %u", ((PSmoothMotor) LeftMotor)->currentSpeed);
		bgx1_termGoto(1, 1);
		bgx1_termPrint(text);
		
		sprintf(text, "Dir: %i", ((PSmoothMotor) LeftMotor)->currentDirection);
		bgx1_termGoto(1, 2);
		bgx1_termPrint(text);
		
		sprintf(text, "Right: %u", ((PSmoothMotor) RightMotor)->currentSpeed);
		bgx1_termGoto(1, 4);
		bgx1_termPrint(text);
		
		sprintf(text, "Dir: %i", ((PSmoothMotor) RightMotor)->currentDirection);
		bgx1_termGoto(1, 5);
		bgx1_termPrint(text);
		
		blinkLed(LeftYellow, 2);
	}
	
}

void testMotorsWithoutDisplay() {
	while (1) {
		uint8_t btns = bgx1_syncInterface(0);
		if (btns & BGX1_BTN_1)
			regulateSpeedForward(LeftMotor, 0xFFFF);
		if (btns & BGX1_BTN_2)
			regulateSpeedBackward(LeftMotor, 0xFFFF);
		if (btns & BGX1_BTN_3)
			regulateSpeedForward(RightMotor, 0xFFFF);
		if (btns & BGX1_BTN_4)
			regulateSpeedBackward(RightMotor, 0xFFFF);
	}	
}

int main() {
	
	// blink_reset_condition_byte(AllLeds, RedLeds);	
	
	while (!bgx1_initialized()) blinkLed(LeftRed, 2);
	bgx1_reset();
	
	// testEndianness();
	// testIllumination();
	// testMotorsOnDisplay();
	testMotorsWithoutDisplay();
}
