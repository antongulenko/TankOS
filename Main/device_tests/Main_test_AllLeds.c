#ifdef Main_test_AllLeds

// Funktioniert.

#include <util/delay.h>

int i = 0;

int main() {
	while (1) {
		if (i >= AllLeds.count) i = 0;
		enableLed(AllLeds.leds[i]);
		_delay_ms(200);
		disableLed(AllLeds.leds[i]);
		_delay_ms(100);
		i++;
	}
}

#endif