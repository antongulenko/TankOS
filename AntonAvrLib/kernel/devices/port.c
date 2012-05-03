/*
 * port.kernel
 *
 * Created: 22.04.2012 17:39:24
 *  Author: Anton
 */ 

#ifndef _PORT_KERNEL_H_
#define _PORT_KERNEL_H_

#include "port.h"

void setPortOutput(PPort port) {
	*port->ddr = 0xFF;
}

void setPortInput(PPort port) {
	*port->ddr = 0;
}

void setPinOutput(PPin pin) {
	*pin->port->ddr |= pin->mask;
}

void setPinInput(PPin pin) {
	*pin->port->ddr &= ~pin->mask;
}

void writePort(PPort port, uint8_t value) {
	*port->port = value;
}

uint8_t readPort(PPort port) {
	return *port->pin;
}

void writePin(PPin pin, BOOL value) {
	if (value) setPinOne(pin);
	else setPinZero(pin);
}

void setPinOne(PPin pin) {
	*pin->port->port |= pin->mask;
}

void setPinZero(PPin pin) {
	*pin->port->port &= ~pin->mask;
}

BOOL readPin(PPin pin) {
	if (*pin->port->pin & pin->mask)
		return TRUE;
	else
		return FALSE;
}

#endif