
# USE_TWI :=

# USE_SCHEDULER :=
USE_PROCESS_EXT :=

# USE_SMOOTH_MOTOR_INTERRUPT :=

# TWI_COMMAND_QUEUE :=
# TWI_COMMAND_QUEUE_SLEEP :=

symbols := \
	TWI_Buffer_Size=255 \
	ENABLE_SOFTWARE_TIMER_A \
	MILLISECOND_TIMER_INTERRUPT=TIMER3_COMPA_vect \
	SOFTWARE_TIMER_INTERRUPT_A=TIMER3_COMPA_vect \
	SOFTWARE_TIMER_INTERRUPT_B=TIMER3_COMPB_vect \
	SOFTWARE_TIMER=Timer3 \
	SOFTWARE_TIMER_A=Timer3A \
	SOFTWARE_TIMER_B=Timer3B	

# symbols += FORCE_BUTTON_PIN_CHANGE_INTERRUPTS
# symbols += KEEP_WDT_ENABLED

ifneq ($(origin USE_TWI), undefined)
	symbols += USE_TWI
endif
ifneq ($(origin USE_SCHEDULER), undefined)
	symbols += USE_SCHEDULER
endif

ifneq ($(origin USE_SMOOTH_MOTOR_INTERRUPT), undefined)
	symbols += USE_SMOOTH_MOTOR_INTERRUPT
endif

ifneq ($(origin TWI_COMMAND_QUEUE), undefined)
	symbols += TWI_COMMAND_QUEUE
endif
ifneq ($(origin TWI_COMMAND_QUEUE_SLEEP), undefined)
	symbols += TWI_COMMAND_QUEUE_SLEEP
endif
ifneq ($(origin USE_PROCESS_EXT), undefined)
	symbols += USE_PROCESS_EXT
endif
