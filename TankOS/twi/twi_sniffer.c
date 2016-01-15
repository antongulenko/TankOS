
#include "twi_sniffer.h"
#include <platform/platform_Avr/pin_change.h>
#include <uthash/utlist.h>
#include <kernel/klib.h>

typedef struct TwiSniffer {
	BOOL sniffUpdates;
	TwiSingleSnifferCallback callbackSDA; // OR TwiDoubleSnifferCallback callbackBoth
	TwiSingleSnifferCallback callbackSCL;
	uint8_t portNum;
	uint8_t pinNumSDA;
	uint8_t pinNumSCL;
	BOOL stateSDA;
	BOOL stateSCL;
	struct TwiSniffer *next;
} *TwiSniffer;

static TwiSniffer sniffers;

static void trigger_callbacks(TwiSniffer sniffer, BOOL stateSDA, BOOL stateSCL) {
	BOOL oldStateSDA = sniffer->stateSDA;
	BOOL oldStateSCL = sniffer->stateSCL;
	sniffer->stateSDA = stateSDA;
	sniffer->stateSCL = stateSCL;
	if (sniffer->sniffUpdates) {
		if (oldStateSDA != stateSDA) {
			sniffer->callbackSDA(stateSDA);
		}
		if (oldStateSCL != stateSCL) {
			sniffer->callbackSCL(stateSCL);
		}
	} else {
		if (oldStateSDA != stateSDA || oldStateSCL != stateSCL) {
			((TwiDoubleSnifferCallback) sniffer->callbackSDA)(stateSDA, stateSCL);
		}
	}
}

static void handle_pin_change(TwiSniffer sniffer, uint8_t pinBits) {
	BOOL stateSDA = 0 != (pinBits & _BV(sniffer->pinNumSDA));
	BOOL stateSCL = 0 != (pinBits & _BV(sniffer->pinNumSCL));
	trigger_callbacks(sniffer, stateSDA, stateSCL);
}

static void twi_sniffer_pin_callback(uint8_t portNum, uint8_t pinBits) {
	TwiSniffer i;
	LL_FOREACH(sniffers, i) {
		if (i->portNum == portNum) {
			handle_pin_change(i, pinBits);
		}
	}
}

static BOOL init_sniff_twi(uint8_t portNum, uint8_t pinNum, Pin pin) {
	if (!occupyPin(pin, PinTwiSniffer)) return FALSE;
	addPinInterruptHandler(portNum, twi_sniffer_pin_callback);
	setPinInput(pin);
	return TRUE;
}

static void destroy_sniff_twi(uint8_t portNum, uint8_t pinNum, Pin pin) {
	removePinInterruptHandler(portNum, twi_sniffer_pin_callback);
	deOccupyPin(pin, PinTwiSniffer);
}

BOOL sniff_twi(Pin pinSDA, Pin pinSCL, uint8_t port, uint8_t pinNumSDA, uint8_t pinNumSCL, TwiDoubleSnifferCallback callback) {
	TwiSniffer sniffer = kalloc(sizeof(struct TwiSniffer));
	if (!sniffer) return FALSE;
	if (!init_sniff_twi(port, pinNumSDA, pinSDA)) {
		free(sniffer);
		return FALSE;
	}
	if (!init_sniff_twi(port, pinNumSCL, pinSCL)) {
		free(sniffer);
		destroy_sniff_twi(port, pinNumSDA, pinSDA);
		return FALSE;
	}
	sniffer->portNum = port;
	sniffer->pinNumSDA = pinNumSDA;
	sniffer->pinNumSCL = pinNumSCL;
	sniffer->next = NULL;
	sniffer->callbackSDA = (TwiSingleSnifferCallback) callback;
	sniffer->callbackSCL = NULL;
	sniffer->sniffUpdates = FALSE;
	sniffer->stateSDA = readPin(pinSDA);
	sniffer->stateSCL = readPin(pinSCL);
	LL_APPEND(sniffers, sniffer);
	enablePinChangeInterrupt(port, pinNumSDA);
	enablePinChangeInterrupt(port, pinNumSCL);
	return TRUE;
}

BOOL sniff_twi_updates(Pin pinSDA, Pin pinSCL, uint8_t port, uint8_t pinNumSDA, uint8_t pinNumSCL,
						TwiSingleSnifferCallback callbackSDA, TwiSingleSnifferCallback callbackSCL) {
	TwiSniffer sniffer = kalloc(sizeof(struct TwiSniffer));
	if (!sniffer) return FALSE;
	if (!init_sniff_twi(port, pinNumSDA, pinSDA)) {
		free(sniffer);
		return FALSE;
	}
	if (!init_sniff_twi(port, pinNumSCL, pinSCL)) {
		destroy_sniff_twi(port, pinNumSDA, pinSDA);
		return FALSE;
	}
	sniffer->portNum = port;
	sniffer->pinNumSDA = pinNumSDA;
	sniffer->pinNumSCL = pinNumSCL;
	sniffer->next = NULL;
	sniffer->callbackSDA = callbackSDA;
	sniffer->callbackSCL = callbackSCL;
	sniffer->sniffUpdates = TRUE;
	BOOL sda = readPin(pinSDA);
	BOOL scl = readPin(pinSCL);
	sniffer->stateSDA = !sda; // Force initial callback invokation
	sniffer->stateSCL = !scl;
	trigger_callbacks(sniffer, sda, scl);
	LL_APPEND(sniffers, sniffer);
	enablePinChangeInterrupt(port, pinNumSDA);
	enablePinChangeInterrupt(port, pinNumSCL);
	return TRUE;
}
