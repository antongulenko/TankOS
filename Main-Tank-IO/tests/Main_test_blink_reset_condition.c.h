
// Funktioniert.

#include <kernel/hardware_reset.h>

int main() {
	// Just do this once and idle...
	blink_reset_condition(AllLeds);
	HARDWARE_RESET();
}
