#ifdef Main_test_blink_AllLeds

// Funktioniert noch nicht! Der timer läuft scheinbar nicht los.

#include <util/delay.h>

uint32_t nextBlink = 0;

void before_scheduler() {
	enableLed(&LeftYellow);
	_delay_ms(500);
}

int main() {
	while (1) {
		while (nextBlink > milliseconds_running) ;
		blinkAllLeds(&AllLeds, 2);
		nextBlink = milliseconds_running + 1000;
	}
}

#endif