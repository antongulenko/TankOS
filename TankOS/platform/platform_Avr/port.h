#ifndef __PLATFORM_AVR_PORT__
#define __PLATFORM_AVR_PORT__

#if defined(__AVR_ATmega1284P__)
#    include "avr_atmega1284p/port.h"
#elif defined(__AVR_ATtiny84__)
#    include "avr_attiny84/port.h"
#else
#    error No valid __AVR_*__ symbol defined
#endif

#endif // __PLATFORM_AVR_PORT__
