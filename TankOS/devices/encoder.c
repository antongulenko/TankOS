#include "encoder.h"

#include <kernel/klib.h>
#include <platform/platform_Avr/pin_change.h>
#include <uthash/utlist.h>

// TODO these values are controller-specific
#define NUM_PORTS 4
#define NUM_PINS 8

typedef struct _Encoder {
	Pin pinA;
	Pin pinB;
	struct _Encoder *next;
	
	uint8_t pinMaskA;
	uint8_t pinMaskB;
	
	EncoderError error;
	int16_t state;
	uint8_t pins;
	uint8_t portNum;
} _Encoder;

#define ENCODER Get(_Encoder, encoder)

static _Encoder *encoders[NUM_PORTS] = {0};

static inline void encoderError(_Encoder *enc, EncoderErrorMask err) {
	enc->error.errors++;
	enc->error.errorMask |= err;
}

static inline uint8_t readEncoderPins(_Encoder *enc, BOOL pinA, BOOL pinB) {
	uint8_t pins = enc->pins;
	pins <<= 2;
	if (pinA) {
		pins |= 0b10;
	}
	if (pinB) {
		pins |= 0b01;
	}
	enc->pins = pins;
	return pins;
}

static void encoderPinInterrupt(uint8_t portNum, uint8_t pinBits) {
	if (portNum >= NUM_PORTS) return;
	_Encoder *encoderList = encoders[portNum];
	_Encoder *enc = NULL;
	LL_FOREACH(encoderList, enc) {
		BOOL stateA = (pinBits & enc->pinMaskA) != 0;
		BOOL stateB = (pinBits & enc->pinMaskB) != 0;
		uint8_t pins = readEncoderPins(enc, stateA, stateB);

		switch (pins & 0x0f) {
		    case 0b00000000: // no change
				break;
			case 0b00000001: // B rise before A
				enc->state--;
				break;
			case 0b00000010: // A rise before B
				enc->state++;
				break;
			case 0b00000011:
				encoderError(enc, EncoderSimultaneousRise);
				break;
			case 0b00000100: // B drop after A
				enc->state++;
				break;
			case 0b00000101: // no change
				break;
			case 0b00000110:
				encoderError(enc, EncoderSimultaneousFlip1);
				break;
			case 0b00000111: // A rise after B
				enc->state--;
				break;
			case 0b00001000: // A drop after B
				enc->state--;
				break;     
			case 0b00001001:
				encoderError(enc, EncoderSimultaneousFlip2);
				break;     
			case 0b00001010: // no change
				break;     
			case 0b00001011: // B rise after A
				enc->state++;
				break;
			case 0b00001100:
				encoderError(enc, EncoderSimultaneousDrop);
				break;     
			case 0b00001101: // A drop before B
				enc->state++;
				break;     
			case 0b00001110: // B drop before A
				enc->state--;
				break;     
			case 0b00001111: // no change
				break;
		}
	}
}

Encoder newEncoder(uint8_t portNum, uint8_t pinNumA, uint8_t pinNumB, Pin pinA, Pin pinB) {
	if (portNum >= NUM_PORTS) return Invalid(Encoder);
	_Encoder *encoder = kalloc(sizeof(_Encoder));
	if (!encoder) return Invalid(Encoder);
	if (!occupyPin(pinA, PinEncoder)) {
		free(encoder);
		return Invalid(Encoder);
	}
	if (!occupyPin(pinB, PinEncoder)) {
		free(encoder);
		deOccupyPin(pinA, PinEncoder);
		return Invalid(Encoder);
	}
	setPinInput(pinA);
	setPinInput(pinB);
	enablePinChangeInterrupt(portNum, pinNumA);
	enablePinChangeInterrupt(portNum, pinNumB);
	setPinInterruptHandler(portNum, encoderPinInterrupt);
	readEncoderPins(encoder, readPin(pinA), readPin(pinB)); // Set encoder->pins
	encoder->pinA = pinA;
	encoder->pinB = pinB;
	encoder->portNum = portNum;
	encoder->pinMaskA = _BV(pinNumA);
	encoder->pinMaskB = _BV(pinNumB);
	encoder->state = 0;
	encoder->error.errors = 0;
	encoder->error.errorMask = 0;
	encoder->next = NULL;
	LL_APPEND(encoders[portNum], encoder);
	return As(Encoder, encoder);
}

Encoder destroyEncoder(Encoder encoder) {
	if (IsValid(encoder)) {
		// TODO Should disable pin interrupt.
		deOccupyPin(ENCODER->pinA, PinEncoder);
		deOccupyPin(ENCODER->pinB, PinEncoder);
		if (ENCODER->portNum < NUM_PORTS) {
			if (encoders[ENCODER->portNum] != NULL)
				LL_DELETE(encoders[ENCODER->portNum], ENCODER);
		}
		free(ENCODER);
	}
	return Invalid(Encoder);
}

BOOL encoderValid(Encoder encoder) {
	if (!IsValid(encoder)) return FALSE;
	if (pinOccupation(ENCODER->pinA) != PinEncoder) return FALSE;
	if (pinOccupation(ENCODER->pinB) != PinEncoder) return FALSE;
	if (ENCODER->portNum >= NUM_PORTS) return FALSE;
	if (encoders[ENCODER->portNum] == NULL) return FALSE;
	return TRUE;
}

int16_t encoderState(Encoder encoder) {
	if (!IsValid(encoder)) return 0;
	return ENCODER->state;
}

unsigned int countEncoders() {
	unsigned int result = 0;
	for (int i = 0; i < NUM_PORTS; i++) {
		_Encoder *el;
		unsigned int counter;
		LL_COUNT(encoders[i], el, counter);
		result += counter;
	}
	return result;
}

EncoderError getEncoderError(Encoder encoder) {
	return ENCODER->error;
}
