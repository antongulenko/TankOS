#ifndef __twi_sniffer_h__
#define __twi_sniffer_h__

#include <tank_os_common.h>
#include <devices/port.h>

#define PinTwiSniffer 20

typedef void (*TwiSingleSnifferCallback)(BOOL pinUp);
typedef void (*TwiDoubleSnifferCallback)(BOOL sdaUp, BOOL sclUp);

BOOL sniff_twi(Pin pinSDA, Pin pinSCL, uint8_t port, uint8_t pinNumSDA, uint8_t pinNumSCL, TwiDoubleSnifferCallback callback);

BOOL sniff_twi_updates(Pin pinSDA, Pin pinSCL, uint8_t port, uint8_t pinNumSDA, uint8_t pinNumSCL,
						TwiSingleSnifferCallback callbackSDA, TwiSingleSnifferCallback callbackSCL);

#endif // __twi_sniffer_h__
