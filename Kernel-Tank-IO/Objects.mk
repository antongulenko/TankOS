
include DefaultTankObjects.mk

objects += \
	$(BUILDDIR)/tank_led.kernel.o \
	$(BUILDDIR)/tank_button.kernel.o

ifneq ($(origin USE_TWI), undefined)
	objects += $(KERNEL)/TWI/twi_raw_slave.kernel.o
	objects += $(KERNEL)/TWI/twi_rpc_slave.kernel.o
	objects += $(BUILDDIR)/tank_IO_server.kernel.o
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

objects += $(SHARED)/init.kernel.o
