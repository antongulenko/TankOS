
#include <kernel.h>

#include <util/delay.h>
#include <util/atomic.h>

int main() {
	uint32_t nextBlink = 0;
	while (1) {
		while (nextBlink > get_milliseconds_running()) ;
		enableLeds(allLeds);
		nextBlink = get_milliseconds_running() + 1000;
		while (nextBlink > get_milliseconds_running()) ;
		disableLeds(allLeds);
		nextBlink = get_milliseconds_running() + 1000;
	}
}
