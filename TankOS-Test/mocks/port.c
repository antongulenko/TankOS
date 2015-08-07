
#include "port.h"
#include <string.h>

volatile uint8_t port, pin, ddr;

Port testPort;
Pin testPin1, testPin2, testPin3, testPin4;

void init_fake_port() {
	port = pin = ddr = 0;
    testPort = newPort(&port, &pin, &ddr);
    testPin1 = newPin(testPort, testPin1_num);
    testPin2 = newPin(testPort, testPin2_num);
    testPin3 = newPin(testPort, testPin3_num);
    testPin4 = newPin(testPort, testPin4_num);
}

void destroy_fake_port() {
    testPin1 = destroyPin(testPin1);
    testPin2 = destroyPin(testPin2);
    testPin3 = destroyPin(testPin3);
    testPin4 = destroyPin(testPin4);
    testPort = destroyPort(testPort);
}
