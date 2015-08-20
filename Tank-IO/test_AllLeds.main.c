
#include <kernel.h>

#include <util/delay.h>

int i = 0;

int main() {
	while (1) {
		if (i >= allLeds->count) i = 0;
		enableLed(allLeds->leds[i]);
		delay_ms(200);
		disableLed(allLeds->leds[i]);
		delay_ms(100);
		i++;
	}
}
