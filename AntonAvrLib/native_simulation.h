#ifndef FAKE_REGISTERS_H_
#define FAKE_REGISTERS_H_

// This is included when we do a native build.
// Instead of preprocessor-macros for hardware addresses, some registers
// are simply represented as global data.

// This also contains some definitions to make code compile for the native env.

#define _BV(a) (1 << a)
typedef unsigned int uint32_t;
typedef unsigned char uint8_t;

extern uint8_t PCMSK0, PCMSK1, PCMSK2, PCMSK3;
extern uint8_t PCICR;

void _delay_ms(double ms);

#endif
