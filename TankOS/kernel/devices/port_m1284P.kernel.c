/*
 * port_m1284p.kernel
 *
 * Created: 28.04.2012 11:26:42
 *  Author: Anton
 */

#include <kernel/kernel_init.h>
#include "port_m1284P.h"

DEFINE_PORT_AND_PINS_IMPL(A)
DEFINE_PORT_AND_PINS_IMPL(B)
DEFINE_PORT_AND_PINS_IMPL(C)
DEFINE_PORT_AND_PINS_IMPL(D)

static void init_ports_m1284P() {
	INIT_PORT_AND_PINS(A);
	INIT_PORT_AND_PINS(B);
	INIT_PORT_AND_PINS(C);
	INIT_PORT_AND_PINS(D);
}
KERNEL_INIT(init_ports_m1284P)
