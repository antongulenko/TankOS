
# KEEP_WDT_ENABLED:=

ld_symbols := \
	millisecond_timer=Timer3 \
	millisecond_timer_A=Timer3A \
	millisecond_timer_B=Timer3B \
	__vector_32=__vector_MILLISECOND_TIMER_INTERRUPT
	#__vector_33=...

# These preprocessor symbols are compiled into modules from AntonAvrLib and Tank-Shared,
# but are relevant for all projects. Don't see a way to handle these things using the linker.
# TWI_Buffer_Size is hard to extract this way, because it is used at ~3 different places to allocate static buffers.
symbols := \
	TWI_Buffer_Size=255
