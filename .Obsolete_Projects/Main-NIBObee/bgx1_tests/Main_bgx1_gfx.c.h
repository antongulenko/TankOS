
// Noch zu testen.
// This test is copied and modified from the NIBObee lib (bgx1_test_gfx.c)

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>

#define delay(a) delay_ms(a)

#include "res/smily.xbm"

void plot_smily(uint8_t x, uint8_t y) {
	bgx1_move  (x, y);
	bgx1_drawBitmap_P(smily_width, smily_height, smily_bits);
}

void plot_house(uint8_t x, uint8_t y, uint8_t s) {
  bgx1_move  (x+s*0, y+s*7);
  bgx1_lineTo(x+s*4, y+s*7);
  delay(200);
  bgx1_lineTo(x+s*4, y+s*3);
  delay(200);
  bgx1_lineTo(x+s*0, y+s*3);
  delay(200);
  bgx1_lineTo(x+s*2, y+s*0);
  delay(200);
  bgx1_lineTo(x+s*4, y+s*3);
  delay(200);
  bgx1_lineTo(x+s*0, y+s*7);
  delay(200);
  bgx1_lineTo(x+s*0, y+s*3);
  delay(200);
  bgx1_lineTo(x+s*4, y+s*7);
}

void plot_vLines(uint8_t x, uint8_t y, uint8_t sx, uint8_t sy) {
  // down lines
  bgx1_move  (x+sx*0, y+sy*0);
  bgx1_lineTo(x+sx*3, y+sy*1);
  bgx1_move  (x+sx*1, y+sy*0);
  bgx1_lineTo(x+sx*1, y+sy*1); 
  bgx1_move  (x+sx*3, y+sy*0);
  bgx1_lineTo(x+sx*0, y+sy*1);

  // up lines
  bgx1_move  (x+sx*5, y+sy*1);
  bgx1_lineTo(x+sx*2, y+sy*0);
  bgx1_move  (x+sx*4, y+sy*1);
  bgx1_lineTo(x+sx*4, y+sy*0); 
  bgx1_move  (x+sx*2, y+sy*1);
  bgx1_lineTo(x+sx*5, y+sy*0);
  
}

void plot_hLines(uint8_t x, uint8_t y, uint8_t sx, uint8_t sy) {
  // right lines
  bgx1_move  (x+sx*0, y+sy*0);
  bgx1_lineTo(x+sx*1, y+sy*3);
  bgx1_move  (x+sx*0, y+sy*1);
  bgx1_lineTo(x+sx*1, y+sy*1); 
  bgx1_move  (x+sx*0, y+sy*3);
  bgx1_lineTo(x+sx*1, y+sy*0);

  // left lines
  bgx1_move  (x+sx*1, y+sy*5);
  bgx1_lineTo(x+sx*0, y+sy*2);
  bgx1_move  (x+sx*1, y+sy*4);
  bgx1_lineTo(x+sx*0, y+sy*4); 
  bgx1_move  (x+sx*1, y+sy*2);
  bgx1_lineTo(x+sx*0, y+sy*5);
    
}


int main() {
	
	blink_reset_condition(AllLeds);
	
	while (!bgx1_initialized()) delay_ms(30);
	
	bgx1_setStatus(0xff);
	
  //bgx1_reset();
  //bgx1_termClear();
  // Hauptschleife:
  while(1) {
    sei();
    delay(20);
	
	if (bgx1_getStatus() == 0xff) {
      delay(1500);

      bgx1_reset();

      delay(500);
      
      plot_house(2, 5, 8);
	  
      delay(500);

      bgx1_move(39, 1);
	 bgx1_box(5, 62);

      delay(200);
      
      bgx1_move  (48, 0);
      bgx1_lineTo(48, 29); 
      bgx1_lineTo(77, 29); 
      bgx1_lineTo(77, 0); 
      bgx1_lineTo(48, 0);     
      plot_vLines(50, 2, 5, 25);

      delay(200);
      
      bgx1_move  (48, 34);
      bgx1_lineTo(48, 63);
      bgx1_lineTo(77, 63);
      bgx1_lineTo(77, 34);
      bgx1_lineTo(48, 34);
      plot_hLines(50, 36, 25, 5);

      delay(200);

      bgx1_move(48, 31);
      bgx1_box(30, 2);
      
      delay(500);
      
      bgx1_move(82, 0);
      bgx1_selectFont(0);
      bgx1_print("Test II");
      uint8_t w = bgx1_textWidth("Test II");
      bgx1_move(82, 8);
      bgx1_hLine(w);

      delay(200);
      
      bgx1_move(82, 20);
      bgx1_selectFont(1);
      bgx1_print("Test II");
      w = bgx1_textWidth("Test II");
      bgx1_move(82, 28);
      bgx1_hLine(w);

      delay(500);
      
      plot_smily(85, 40);

      delay(200);
      
      plot_smily(105, 40);
	  
    }

  }
  return 0;
}
