
LIBRARY :=
undefine dependencies

symbols := \
	TWI_Buffer_Size=255

# symbols += FORCE_BUTTON_PIN_CHANGE_INTERRUPTS
# symbols += KEEP_WDT_ENABLED

BASEDIR := $(get-basedir)
include Defaults.mk
include Main.mk
