
#include <unity.h>
#include <kernel/devices/port.h>

uint8_t port, pin, ddr;

#define PORTTest &port;
#define PINTest &pin;
#define DDRTest &ddr;
#define PINTest1 1
#define PINTest2 4

DEFINE_PORT(Test)
DEFINE_PIN(Test, 1)
DEFINE_PIN(Test, 2)

DEFINE_PORT_IMPL(Test)
DEFINE_PIN_IMPL(Test, 1)
DEFINE_PIN_IMPL(Test, 2)

void setup() {
	port = pin = ddr = 0;
	memset(&PortTest, 0, sizeof(Port));
	memset(&PinTest1, 0, sizeof(Pin));
	memset(&PinTest2, 0, sizeof(Pin));
	
	INIT_PORT(Test);
	INIT_PIN(Test, 1);
	INIT_PIN(Test, 2);
}

void teardown() {
}

void assertState(uint8_t exp_pin, uint8_t exp_port, uint8_t exp_ddr) {
	TEST_ASSERT_EQUAL_UINT8(exp_pin, pin);
	TEST_ASSERT_EQUAL_UINT8(exp_port, port);
	TEST_ASSERT_EQUAL_UINT8(exp_ddr, ddr);
}

void test_nothingSetAfterInit() {
	assertState(0, 0, 0);
}

void test_setPortOutput() {
	setPortOutput(PortTest);
	assertState(0, 0, 0xFF);
}

void test_setPortInput() {
	port = 0xaa;
	setPortInput(PortTest);
	assertState(0, 0, 0);
}

void test_setPinOutput_one() {
	setPinOutput(PinTest1);
	assertState(0, 0, 1 << PINTest1);
}

void test_setPinOutput_two() {
	setPinOutput(PinTest1);
	setPinOutput(PinTest2);
	assertState(0, 0, (1 << PINTest1) || (1 << PINTest2));
}

void test_setPinInput_one() {
	port = 0xFF;
	setPinInput(PinTest1);
	assertState(0, 0, ~(1 << PINTest1));
}

void test_setPinInput_two() {
	setPinInput(PinTest1);
	setPinInput(PinTest2);
	assertState(0, 0, ~((1 << PINTest1) || (1 << PINTest2)));
}

void test_writePort() {
	writePort(PortTest, 0xda);
	assertState();
	TEST_ASSERT_EQUAL_UINT8(0xda, port);
}

void test_readPort() {
	pin = 0xca;
	uint8_t val = readPort(PortTest);
	TEST_ASSERT_EQUAL_UINT8(0xca, val);
}

void test_writePin_one() {
	
}
