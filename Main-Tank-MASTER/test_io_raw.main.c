
#include <kernel.h>

int main() {
	DDRC = 0xff;
	uint8_t b = 0;
	
	while (1) {
		if (b) {
			PORTC = ~(1 << PORTC0);
			b = 0;
		} else {
			PORTC = ~(1 << PORTC1);
			b = 1;
		}
		delay(2000);
	}
}
