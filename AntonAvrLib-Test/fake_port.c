
#include "fake_port.h"

volatile uint8_t port, pin, ddr;

DEFINE_PORT_IMPL(Test)
DEFINE_PIN_IMPL(Test, 1)
DEFINE_PIN_IMPL(Test, 2)
DEFINE_PIN_IMPL(Test, 3)

void init_fake_port() {
	port = pin = ddr = 0;
	memset((void*) PortTest, 0, sizeof(Port));
	memset((void*) PinTest1, 0, sizeof(Pin));
	memset((void*) PinTest2, 0, sizeof(Pin));
	
	INIT_PORT(Test)
	INIT_PIN(Test, 1)
	INIT_PIN(Test, 2)
}
