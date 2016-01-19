#ifndef __encoder_sensor__
#define __encoder_sensor__

#include <tank_os_common.h>
#include <devices/port.h>

DEFINE_HANDLE(Encoder);

#define PinEncoder 11

typedef int32_t encoder_pos_t;

Encoder newEncoder(uint8_t portNum, uint8_t pinNumA, uint8_t pinNumB, Pin pinA, Pin pinB);
Encoder destroyEncoder(Encoder encoder);
BOOL encoderValid(Encoder encoder);

encoder_pos_t encoderState(Encoder encoder);
void encoderReset(Encoder encoder, encoder_pos_t state);

unsigned int countEncoders();

typedef enum {
	EncoderSimultaneousRise = _BV(0),
	EncoderSimultaneousDrop = _BV(1),
	EncoderSimultaneousFlip1 = _BV(2), // Only B up -> only A up
	EncoderSimultaneousFlip2 = _BV(3), // Only A up -> only B up
} EncoderErrorMask;

typedef struct EncoderError {
	uint16_t errors;
	uint16_t errorMask; // enum EncoderErrorMask
} EncoderError;

EncoderError getEncoderError(Encoder encoder);

#endif // __encoder_sensor__
