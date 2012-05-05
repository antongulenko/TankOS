#ifdef Main_test_blink_reset_condition

#include <kernel/hardware_reset.h>

int main() {
	// Just do this once and idle...
	blink_reset_condition(&AllLeds);
	HARDWARE_RESET();
}

#endif