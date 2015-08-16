
// This main() is useful when using pin-change interrupts to update the button status.
// In that case, all the functionality of the IO-processor is handled via interrupts.

#include <kernel.h>

int main() {
	DDRB = 0xff;
	DDRD = 0xff;
	uint32_t m;
	while (1) {
		blinkAllLeds(leftLeds, 2);
		//m = get_milliseconds_running() + 100;
		//while (m > get_milliseconds_running()) ;
		blinkAllLeds(middleLeds, 2);
		//m = get_milliseconds_running() + 100;
		//while (m > get_milliseconds_running()) ;
		blinkAllLeds(rightLeds, 2);
		//m = get_milliseconds_running() + 100;
		//while (m > get_milliseconds_running()) ;
		
		blinkAllLeds(allLeds, 3q	);
	}
}
