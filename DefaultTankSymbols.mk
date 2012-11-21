
USE_TWI :=

# USE_SCHEDULER :=

# USE_SMOOTH_MOTOR_INTERRUPT :=

# TWI_COMMAND_QUEUE :=
# TWI_COMMAND_QUEUE_SLEEP :=

symbols := TIMER_INTERRUPT_A

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
