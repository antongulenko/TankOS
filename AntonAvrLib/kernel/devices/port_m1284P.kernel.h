/*
 * port_m1284p.kernel
 *
 * Created: 28.04.2012 11:26:42
 *  Author: Anton
 */ 

#ifndef _PORT_M1284P_KERNEL_
#define _PORT_M1284P_KERNEL_

#include "../kernel_init.h"
#include "port_m1284P.h"

void init_ports_m1284P() {
	INIT_PORT_AND_PINS(A);
	INIT_PORT_AND_PINS(B);
	INIT_PORT_AND_PINS(C);
	INIT_PORT_AND_PINS(D);
}
KERNEL_INIT(init_ports_m1284P)

#endif /* PORT_M1284P_H_ */