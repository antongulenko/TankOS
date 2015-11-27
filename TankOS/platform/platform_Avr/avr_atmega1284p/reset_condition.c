
#include <platform/platform_Avr/early_init.h>

extern uint16_t unclean_resets;

ResetCondition getResetCondition() {
	uint16_t mask = 0;
	uint8_t status = rawResetConditionByte();
	if (status & _BV(PORF)) {
		mask |= PowerOnReset;
	}
	if (status & _BV(WDRF)) {
		mask |= WatchDogReset;
	}
	if (status & _BV(BORF)) {
		mask |= BrownOutReset;
	}
    if (status & _BV(JTRF)) {
		mask |= JtagReset;
	}
    if (status & _BV(EXTRF)) {
		mask |= ExternalReset;
	}
    if (unclean_resets > 0) {
        mask |= UncleanReset;
    }
	if (!mask) mask = OtherReset;
	return mask;
}
