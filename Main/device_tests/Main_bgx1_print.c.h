
// Läuft zum teil. Daten empfangen geht zB nicht so gut.

#include <util/delay.h>
#include <misc/read_buttons_loop.h>
#include <util/twi.h>

int main() {
	PButton allButtons[] = { ButtonLeftBackward, ButtonLeftForward, ButtonRightBackward, ButtonRightForward };
	read_buttons_loop(4, allButtons);
}

void button_pressed(PButton button) {
	blinkAllLeds(AllLeds, 2);
	_delay_ms(500);
	
	if (button == ButtonLeftForward) {
		uint16_t version = bgx1_getVersion();
		if (twi_error == TWI_No_Error) {
			flashLed(RightYellow, 1000);
			blinkLeds(AllLeds, version, 4);
			
			version = version << 4;
			flashLed(RightYellow, 1000);
			blinkLeds(AllLeds, version, 4);
			
			version = version << 4;
			flashLed(RightYellow, 1000);
			blinkLeds(AllLeds, version, 4);
			
			version = version << 4;
			flashLed(RightYellow, 1000);
			blinkLeds(AllLeds, version, 4);
		}
	} else if (button == ButtonRightForward) {
		uint16_t status = AS_WORD(bgx1_syncInterface(0xA5));
		if (twi_error == TWI_No_Error) {
			flashLed(RightYellow, 1000);
			blinkLeds(AllLeds, status, 4);
			
			status = status << 4;
			flashLed(RightYellow, 1000);
			blinkLeds(AllLeds, status, 4);
		}
	} else if (button == ButtonLeftBackward) {
		bgx1_print("Hi !! :) ");
	} else if (button == ButtonRightBackward) {
		bgx1_embeddedImage(0);
	}
	
	if (twi_error != TWI_No_Error) {
		blinkAllLeds(RedLeds, 5);
		byte err = (byte) twi_error;
		blinkLeds(AllLeds, err, 4);
		
		err = err << 4;
		flashAllLeds(RedLeds, 700);
		blinkLeds(AllLeds, err, 4);
	} else {
		disableLeds(AllLeds);
		enableLeds(YellowLeds);
	}
}
