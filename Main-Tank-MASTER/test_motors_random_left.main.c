
#include <kernel.h>
#include "util.h"

int main() {
	seed();
	while (1) {
		regulateDirSpeed(LeftMotor, randomSpeed());
		_delay_ms(2500);
	}
}
