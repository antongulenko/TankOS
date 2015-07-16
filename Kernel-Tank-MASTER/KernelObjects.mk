
include Tank-Shared/KernelObjects1.mk

OWN := Kernel-Tank-MASTER/$(BUILD_DIRNAME)

objects += \
	$(KERNEL)/devices/motor_smooth_pair.kernel.o \
	$(OWN)/tank_motor.kernel.o

ifeq ($(USE_SMOOTH_MOTOR_INTERRUPT), true)
	objects += $(SHARED)/motor_smooth_interrupt.kernel.o
else
	objects += $(SHARED)/motor_smooth_loop.kernel.o
endif

ifeq ($(USE_TWI), true)
	objects += \
		$(KERNEL)/TWI/twi_driver.kernel.o \
		$(KERNEL)/TWI/twi_rpc.kernel.o \
		$(OWN)/twi_tank_IO.kernel.o
endif

include Tank-Shared/KernelObjects2.mk
