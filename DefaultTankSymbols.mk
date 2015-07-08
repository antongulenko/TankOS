
# KEEP_WDT_ENABLED:=

ifneq ($(origin TWI_COMMAND_QUEUE_SLEEP), undefined)
	# BUTTON_PIN_CHANGE_INTERRUPTS is implied by TWI_COMMAND_QUEUE_SLEEP
	BUTTON_PIN_CHANGE_INTERRUPTS:=
endif

ld_symbols := \
	millisecond_timer=Timer3 \
	millisecond_timer_A=Timer3A \
	millisecond_timer_B=Timer3B \
	__vector_32=__vector_MILLISECOND_TIMER_INTERRUPT
	#__vector_33=...

# These preprocessor symbols are compiled into modules from TankOS and Tank-Shared,
# but are relevant for all projects. Don't see a way to handle these things using the linker.
# TWI_Buffer_Size is hard to extract this way, because it is used at ~3 different places to allocate static buffers.
# The two alternatives would be declaring the buffers extern and linking them differently for the different projects,
# or linking TWI_Buffer_Size as uint8_t and allocating the buffers dynamically.
symbols := \
	TWI_Buffer_Size=255
