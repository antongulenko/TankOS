
include DefaultKernelObjects.mk

OWN := Kernel-Tank-MASTER/$(BUILD_DIRNAME)

objects += \
	$(KERNEL)/devices/motor_smooth_pair.kernel.o \
	$(OWN)/tank_motor.kernel.o

ifneq ($(origin USE_SMOOTH_MOTOR_INTERRUPT), undefined)
	objects += $(SHARED)/motor_smooth_interrupt.kernel.o
else
	objects += $(SHARED)/motor_smooth_loop.kernel.o
endif

ifneq ($(origin USE_TWI), undefined)
	objects += \
		$(KERNEL)/TWI/twi_raw.kernel.o \
		$(KERNEL)/TWI/twi_rpc.kernel.o \
		$(OWN)/twi_tank_IO.kernel.o
endif

objects += $(SHARED)/init.kernel.o
