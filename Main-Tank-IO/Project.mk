
undefine LIBRARY
project := $(get-basedir)
include $(project)/Dependencies.mk

USE_TWI:=
# BUTTON_PIN_CHANGE_INTERRUPTS:=
# TWI_COMMAND_QUEUE:=
# TWI_COMMAND_QUEUE_SLEEP:=

ifneq ($(origin TWI_COMMAND_QUEUE_SLEEP), undefined)
	# BUTTON_PIN_CHANGE_INTERRUPTS is implied by TWI_COMMAND_QUEUE_SLEEP
	BUTTON_PIN_CHANGE_INTERRUPTS:=
endif

include Defaults.mk
include DefaultTankSymbols.mk
include Main.mk
