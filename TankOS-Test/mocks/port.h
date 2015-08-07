#ifndef FAKE_PORT_H_
#define FAKE_PORT_H_

#include <tank_os_common.h>
#include <kernel/devices/port.h>

extern volatile uint8_t port, pin, ddr;

#define testPin1_num 1
#define testPin2_num 4
#define testPin3_num 6
#define testPin4_num 5
#define testPin1_mask _BV(testPin1_num)
#define testPin2_mask _BV(testPin2_num)
#define testPin3_mask _BV(testPin3_num)
#define testPin4_mask _BV(testPin4_num)

extern Port testPort;
extern Pin testPin1, testPin2, testPin3, testPin4;

void init_fake_port();
void destroy_fake_port();

#endif
