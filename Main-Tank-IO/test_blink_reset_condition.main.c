
#include <kernel.h>

// Funktioniert.

#include <misc/hardware_reset.h>

int main() {
	blink_reset_condition(AllLeds);
	HARDWARE_RESET();
}
