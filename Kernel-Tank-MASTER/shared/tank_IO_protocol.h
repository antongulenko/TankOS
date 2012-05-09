#ifndef TANK_IO_PROTOCOL_H_
#define TANK_IO_PROTOCOL_H_

#define TANK_IO_ADDRESS (11 << 2)

enum {
	TANK_IO_readButtons = 0xA0,	// () => (uint8_t)
	TANK_IO_writeLeds = 0xA1 // (uint16_t) => ()
};

#endif