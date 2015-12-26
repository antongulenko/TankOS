#ifndef FAKE_PORT_H_
#define FAKE_PORT_H_

#include <tank_os_common.h>
#include <devices/port.h>

extern volatile uint8_t port, pin, ddr;

#define testPin1_num 1
#define testPin2_num 4
#define testPin3_num 6
#define testPin4_num 5
#define testPin5_num 2
#define testPin6_num 3
#define testPin7_num 7
#define testPin8_num 0
#define testPin1_mask _BV(testPin1_num)
#define testPin2_mask _BV(testPin2_num)
#define testPin3_mask _BV(testPin3_num)
#define testPin4_mask _BV(testPin4_num)
#define testPin5_mask _BV(testPin5_num)
#define testPin6_mask _BV(testPin6_num)
#define testPin7_mask _BV(testPin7_num)
#define testPin8_mask _BV(testPin8_num)

extern Port testPort;
extern Pin testPin1, testPin2, testPin3, testPin4, testPin5, testPin6, testPin7, testPin8;

void init_fake_port();
void destroy_fake_port();

#endif
