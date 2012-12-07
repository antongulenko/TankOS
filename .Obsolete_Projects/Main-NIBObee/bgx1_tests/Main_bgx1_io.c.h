
// Scheint jetz nice zu gehen!

#include <util/delay.h>
#include <misc/read_buttons_loop.h>
#include <stdio.h>

int main() {
	
	while (!bgx1_initialized()) delay_ms(30);
	
	uint8_t keys = 0;
	
  while(1) {
    sei();
    delay(20);
    
    if (bgx1_getStatus()==0xff) {
      bgx1_reset();
      
      bgx1_termGoto(2, 2);
      bgx1_termPrint("AN0:");

      bgx1_termGoto(2, 3);
      bgx1_termPrint("AN1:");

      bgx1_termGoto(2, 4);
      bgx1_termPrint("T:");
    
      bgx1_termGoto(2, 5);
      bgx1_termPrint("Keys:");
    }
    
    keys = bgx1_syncInterface(keys);
    bgx1_syncPort(0,0);
    uint16_t a0 = bgx1_getAnalog(0x40);
    uint16_t a1 = bgx1_getAnalog(0x41);
    uint16_t temp = bgx1_getAnalog(0xc8);
    char text[32];
    
    bgx1_setIllumination(a0);
    
    bgx1_termGoto(7, 2);
    sprintf(text, "%4i", (int)a0);
    bgx1_termPrint(text);

    bgx1_termGoto(7, 3);
    sprintf(text, "%4i", (int)a1);
    bgx1_termPrint(text);

    bgx1_termGoto(7, 4);
    sprintf(text, "%4i", (int)temp);
    bgx1_termPrint(text);
	
	bgx1_termGoto(7, 5);
    sprintf(text, "%4i", (int)keys);
    bgx1_termPrint(text);
  }
  return 0;
}
