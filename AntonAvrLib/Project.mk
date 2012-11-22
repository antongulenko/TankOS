
LIBRARY :=
undefine dependencies

symbols := \
	TWI_Buffer_Size=255 \
	millisecond_timer_tick=timer_tick_A

# symbols += FORCE_BUTTON_PIN_CHANGE_INTERRUPTS
# symbols += KEEP_WDT_ENABLED

BASEDIR := $(get-basedir)
include Defaults.mk
include DefaultTankSymbols.mk
include Main.mk
