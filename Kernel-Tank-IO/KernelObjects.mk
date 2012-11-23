
include DefaultKernelObjects1.mk

OWN := Kernel-Tank-IO/$(BUILD_DIRNAME)

objects += \
	$(OWN)/tank_led.kernel.o \
	$(OWN)/tank_button.kernel.o

ifneq ($(origin USE_TWI), undefined)
	objects += $(KERNEL)/TWI/twi_raw_slave.kernel.o
	objects += $(KERNEL)/TWI/twi_rpc_slave.kernel.o
	objects += $(OWN)/tank_IO_server.kernel.o
	ifneq ($(origin TWI_COMMAND_QUEUE), undefined)
		objects += $(KERNEL)/TWI/twi_rpc_hash_server_commandQueue.kernel.o
		ifneq ($(origin TWI_COMMAND_QUEUE_SLEEP), undefined)
			objects += $(KERNEL)/TWI/commandQueueExecuter_sleep.kernel.o
		else
			objects += $(KERNEL)/TWI/commandQueueExecuter_loop.kernel.o
		endif
	else
		objects += $(KERNEL)/TWI/twi_rpc_hash_server.kernel.o
	endif
endif

include DefaultKernelObjects2.mk
