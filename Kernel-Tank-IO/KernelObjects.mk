
include DefaultKernelObjects1.mk

OWN := Kernel-Tank-IO/$(BUILD_DIRNAME)

objects += \
	$(OWN)/tank_led.kernel.o \
	$(OWN)/tank_button.kernel.o

ifneq ($(origin USE_TWI), undefined)
	objects += $(KERNEL)/TWI/twi_raw_slave.kernel.o
	objects += $(KERNEL)/TWI/twi_rpc_slave.kernel.o
	objects += $(KERNEL)/TWI/twi_rpc_hash_server.kernel.o
	objects += $(OWN)/tank_IO_server.kernel.o
	
	ifneq ($(origin TWI_COMMAND_QUEUE), undefined)
		objects += $(KERNEL)/TWI/twi_rpc_hash_server_commandQueue.kernel.o
		ifneq ($(origin TWI_COMMAND_QUEUE_SLEEP), undefined)
			objects += $(KERNEL)/TWI/commandQueueExecuter_sleep.kernel.o
		else
			objects += $(KERNEL)/TWI/commandQueueExecuter_loop.kernel.o
		endif
	endif
endif

ifneq ($(origin BUTTON_PIN_CHANGE_INTERRUPTS), undefined)
	objects += $(OWN)/tank_button_interrupts.kernel.o
else
	# This kernel module will be only relevant, if commandQueueExecuter_loop.kernel.o is linked.
	# Without commandQueueExecuter_loop.kernel.o, nothing from this module will be linked.
	objects += $(OWN)/tank_button_commandQueue.kernel.o
endif

include DefaultKernelObjects2.mk
