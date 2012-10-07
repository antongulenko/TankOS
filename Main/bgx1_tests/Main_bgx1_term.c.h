
// Läuft zum teil. Daten empfangen geht zB nicht so gut.

#include <util/delay.h>
#include <misc/read_buttons_loop.h>
#include <stdio.h>
#include <util/twi.h>

int main() {
	uint8_t bgx1_Keys;
	
	while (!bgx1_initialized()) _delay_ms(30);
	bgx1_setStatus(0xff);
	
	while(1) {
    sei();
    if (bgx1_getStatus()==0xff) {
      delay(1500);

      bgx1_reset();

      bgx1_termPrint("Please press a key...");    
      bgx1_syncInterface(0x01);
      delay(200);
      bgx1_syncInterface(0x00);
      delay(200);
      bgx1_syncInterface(0x01);
      delay(200);
      bgx1_syncInterface(0x00);
      bgx1_termGoto(0, 2);
    }
      
    delay(1);
    bgx1_Keys = bgx1_syncInterface(0);
    
    if (bgx1_Keys!=0) {
      switch (bgx1_Keys) {
        case 0x01: bgx1_termPrint("Hello! "); break;
        case 0x02: bgx1_termPrint("I am the autonomous NIBObee robot. "); break;
        case 0x04: bgx1_termPrint("\n"); break;
        case 0x08: bgx1_termClear(); break;
      }
      
      while (bgx1_Keys!=0) {
        bgx1_Keys = bgx1_syncInterface(0);
        delay(1);
      }
    }
        
  }
}
