
#include <kernel.h>

int main() {
	while (1) {
		BOOL b1 = buttonStatus(Button1);
		BOOL b2 = buttonStatus(Button2);
		BOOL b3 = buttonStatus(Button3);
		BOOL b4 = buttonStatus(Button4);
		uint16_t mask = 0;
		if (b1) mask |= _BV(1);
		if (b2) mask |= _BV(2);
		if (b3) mask |= _BV(3);
		if (b4) mask |= _BV(4);
		setLeds(AllLeds, mask);
	}
}
