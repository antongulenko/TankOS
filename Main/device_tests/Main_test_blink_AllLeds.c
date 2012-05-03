#ifdef Main_test_blink_AllLeds

uint32_t nextBlink = 0;

int main() {
	while (1) {
		while (nextBlink > milliseconds_running) ;
		blinkAllLeds(&AllLeds, 2);
		nextBlink = milliseconds_running + 1000;
	}
}

#endif