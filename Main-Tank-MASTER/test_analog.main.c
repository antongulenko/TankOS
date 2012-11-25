
#include <kernel.h>
#include "util.h"

// #define USE_ANALOG_INTERRUPT
// #define USE_FAKE_MOTOR

#ifdef USE_ANALOG_INTERRUPT
#define ANA_READ ana_read_interrupt
#else
#define ANA_READ ana_read
#endif

int main() {
	setSpeedForward(LeftMotorBase, 0xFFFF);
	
	PMotor motor;
	#ifdef USE_FAKE_MOTOR
		init_fake_motor();
		motor = FakeMotor;
	#else
		motor = RightMotorBase;
	#endif
	
	while (1) {
		while (!ANA_READ(Analog0)) ;
		setSpeedForward(motor, MAKE_WORD(ana_result, 0));
	}
}
