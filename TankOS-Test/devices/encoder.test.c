#include <unity.h>
#include <devices/encoder.h>
#include <mocks/port.h>
#include <mocks/pin_change.h>

Encoder encoder;

// For testing empty lists
extern void *_encoder_list[NUM_PORTS];

BOOL expectClean;

void setUp() {
	initPinChangeInterrupts();
	init_fake_port();
	TEST_ASSERT_EQUAL(0, countEncoders());
	encoder = newEncoder(0, 0, 1, testPin1, testPin2, 0);
	TEST_ASSERT(IsValid(encoder));
	TEST_ASSERT(encoderValid(encoder));
	TEST_ASSERT_EQUAL(1, countEncoders());
	expectClean = TRUE;
}

void tearDown() {
	if (expectClean) {
		EncoderError err = getEncoderError(encoder);
		TEST_ASSERT_EQUAL(0, err.errorMask);
		TEST_ASSERT_EQUAL(0, err.errors);
	}

	encoder = destroyEncoder(encoder);
	TEST_ASSERT_FALSE(IsValid(encoder));
	TEST_ASSERT_EQUAL(PinNoOccupation, pinOccupation(testPin1));
	TEST_ASSERT_EQUAL(PinNoOccupation, pinOccupation(testPin2));
	TEST_ASSERT_EQUAL(0, countEncoders());

	destroy_fake_port();
	tearDownPinChangeInterrupts();
}

void test_init() {
	TEST_ASSERT_EQUAL(0, encoderState(encoder));
	TEST_ASSERT_EQUAL(0, getEncoderError(encoder).errors);
	TEST_ASSERT_EQUAL(0, getEncoderError(encoder).errorMask);
	encoderReset(encoder, 100);
	TEST_ASSERT_EQUAL(100, encoderState(encoder));
}

void interrupt(BOOL aUp, BOOL bUp) {
	uint8_t pins = (aUp ? _BV(0) : 0) | (bUp ? _BV(1) : 0);
	invokePinChangeInterrupt(0, pins);
}

void trigger(BOOL forward) {
	encoder_pos_t state = encoderState(encoder);
	if (forward) {
		interrupt(FALSE, FALSE);
		interrupt(TRUE, FALSE);
		interrupt(TRUE, FALSE); // no values change
		TEST_ASSERT_EQUAL(++state, encoderState(encoder));
		interrupt(TRUE, TRUE);
		interrupt(TRUE, TRUE); // no values change
		interrupt(TRUE, TRUE); // no values change
		interrupt(TRUE, TRUE); // no values change
		interrupt(TRUE, TRUE); // no values change
		TEST_ASSERT_EQUAL(++state, encoderState(encoder));
		interrupt(FALSE, TRUE);
		interrupt(FALSE, TRUE); // no values change
		interrupt(FALSE, TRUE); // no values change
		TEST_ASSERT_EQUAL(++state, encoderState(encoder));
		interrupt(FALSE, FALSE);
		interrupt(FALSE, FALSE); // no values change
		interrupt(FALSE, FALSE); // no values change
		TEST_ASSERT_EQUAL(++state, encoderState(encoder));
	} else {
		interrupt(FALSE, FALSE);
		interrupt(FALSE, TRUE);
		interrupt(FALSE, TRUE); // no values change
		interrupt(FALSE, TRUE); // no values change
		TEST_ASSERT_EQUAL(--state, encoderState(encoder));
		interrupt(TRUE, TRUE);
		interrupt(TRUE, TRUE); // no values change
		interrupt(TRUE, TRUE); // no values change
		TEST_ASSERT_EQUAL(--state, encoderState(encoder));
		interrupt(TRUE, FALSE);
		interrupt(TRUE, FALSE); // no values change
		interrupt(TRUE, FALSE); // no values change
		TEST_ASSERT_EQUAL(--state, encoderState(encoder));
		interrupt(FALSE, FALSE);
		interrupt(FALSE, FALSE); // no values change
		interrupt(FALSE, FALSE); // no values change
		TEST_ASSERT_EQUAL(--state, encoderState(encoder));
	}
}

void test_count() {
	TEST_ASSERT_EQUAL(0, encoderState(encoder));
	trigger(TRUE);
	TEST_ASSERT_EQUAL(1*4, encoderState(encoder));
	trigger(TRUE);
	trigger(TRUE);
	TEST_ASSERT_EQUAL(3*4, encoderState(encoder));
	trigger(FALSE);
	trigger(FALSE);
	trigger(FALSE);
	trigger(FALSE);
	trigger(FALSE);
	TEST_ASSERT_EQUAL(-2*4, encoderState(encoder));
	trigger(TRUE);
	trigger(FALSE);
	trigger(TRUE);
	trigger(TRUE);
	trigger(TRUE);
	trigger(FALSE);
	trigger(FALSE);
	TEST_ASSERT_EQUAL(-1*4, encoderState(encoder));
}

void test_two_encoders() {
	Encoder encoder2 = newEncoder(0, 2, 3, testPin3, testPin4, 0);
	TEST_ASSERT(encoderValid(encoder2));

	TEST_ASSERT_EQUAL(0, encoderState(encoder));
	TEST_ASSERT_EQUAL(0, encoderState(encoder2));

	trigger(TRUE);
	trigger(TRUE);
	TEST_ASSERT_EQUAL(2*4, encoderState(encoder));
	TEST_ASSERT_EQUAL(0, encoderState(encoder2));

	invokePinChangeInterrupt(0, _BV(2));
	invokePinChangeInterrupt(0, _BV(2) | _BV(3));
	invokePinChangeInterrupt(0, _BV(3));
	invokePinChangeInterrupt(0, 0);
	TEST_ASSERT_EQUAL(2*4, encoderState(encoder));
	TEST_ASSERT_EQUAL(1*4, encoderState(encoder2));	

	encoder2 = destroyEncoder(encoder2);
	TEST_ASSERT_FALSE(IsValid(encoder2));
}

void test_errors() {
	expectClean = FALSE;
	uint8_t mask = 0;

	interrupt(TRUE, TRUE);
	TEST_ASSERT_EQUAL(1, getEncoderError(encoder).errors);
	mask |= EncoderSimultaneousRise;
	TEST_ASSERT_EQUAL(mask, getEncoderError(encoder).errorMask);

	interrupt(FALSE, FALSE);
	TEST_ASSERT_EQUAL(2, getEncoderError(encoder).errors);
	mask |= EncoderSimultaneousDrop;
	TEST_ASSERT_EQUAL(mask, getEncoderError(encoder).errorMask);

	interrupt(TRUE, FALSE);
	interrupt(FALSE, TRUE);
	TEST_ASSERT_EQUAL(3, getEncoderError(encoder).errors);
	mask |= EncoderSimultaneousFlip2;
	TEST_ASSERT_EQUAL(mask, getEncoderError(encoder).errorMask);

	interrupt(TRUE, FALSE);
	TEST_ASSERT_EQUAL(4, getEncoderError(encoder).errors);
	mask |= EncoderSimultaneousFlip1;
	TEST_ASSERT_EQUAL(mask, getEncoderError(encoder).errorMask);
}

void test_fluctuation() {
	interrupt(TRUE, FALSE);
	encoder_pos_t state = encoderState(encoder);
	interrupt(TRUE, TRUE);
	interrupt(TRUE, TRUE);
	interrupt(TRUE, FALSE);
	interrupt(TRUE, FALSE);
	interrupt(TRUE, TRUE);
	interrupt(TRUE, TRUE);
	interrupt(TRUE, FALSE);
	TEST_ASSERT_EQUAL(state, encoderState(encoder));

	interrupt(FALSE, FALSE);
	interrupt(FALSE, TRUE);
	state = encoderState(encoder);
	interrupt(TRUE, TRUE);
	interrupt(TRUE, TRUE);
	interrupt(FALSE, TRUE);
	interrupt(FALSE, TRUE);
	interrupt(TRUE, TRUE);
	interrupt(TRUE, TRUE);
	interrupt(FALSE, TRUE);
	TEST_ASSERT_EQUAL(state, encoderState(encoder));
}
