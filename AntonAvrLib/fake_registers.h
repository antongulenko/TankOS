#ifndef FAKE_REGISTERS_H_
#define FAKE_REGISTERS_H_

// This is included when we do a native build.
// Instead of preprocessor-macros for hardware addresses, some registers
// are simply represented as global data.

typedef unsigned int uint32_t;
typedef unsigned char uint8_t;

/*
extern uint32_t PinChangeMasks;

#define PCMSK0 (((uint8_t *) &PinChangeMasks) + 0)
#define PCMSK1 (((uint8_t *) &PinChangeMasks) + 1)
#define PCMSK2 (((uint8_t *) &PinChangeMasks) + 2)
#define PCMSK3 (((uint8_t *) &PinChangeMasks) + 3)
*/

extern uint8_t PCMSK0, PCMSK1, PCMSK2, PCMSK3;
extern uint8_t PCICR;

#define PinChangeMasks ((uint32_t) (PCMSK0 << 24 | PCMSK1 << 16 | PCMSK2 << 8 | PCMSK3))

void clear_all_regsiters();

#endif
