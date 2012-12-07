
#include <kernel.h>

// Funktioniert.

#include <util/delay.h>

int i = 0;

int main() {
	while (1) {
		if (i >= AllLeds->count) i = 0;
		enableLed(AllLeds->leds[i]);
		delay_ms(200);
		disableLed(AllLeds->leds[i]);
		delay_ms(100);
		i++;
	}
}
