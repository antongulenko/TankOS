
objects += \
    $(BUILD_TankOS)/process/mock_mutex.kernel.o \
    $(BUILD_TankOS)/kernel/klib.kernel.o \
    $(BUILD_TankOS)/twi/services/example.o \
    $(BUILD_TankOS)/twi/services/example_client.kernel.o \
    $(BUILD_TankOS)/twi/services/hardware.o \
    $(BUILD_TankOS)/twi/services/hardware_client.kernel.o \
    $(BUILD_TankOS)/twi/services/buffer_stdout.o \
    $(BUILD_TankOS)/twi/services/buffer_stdout_client.kernel.o \
    $(BUILD_Tank-IO)/tank_io_service.o \
    $(BUILD_Tank-IO)/tank_io_service_client.kernel.o \
    $(BUILD_Tank-Driver)/tank_driver_service.o \
    $(BUILD_Tank-Driver)/tank_driver_service_client.kernel.o \
    $(BUILD_Tank-Arm)/tank_arm_service.o \
    $(BUILD_Tank-Arm)/tank_arm_service_client.kernel.o

# TWI_IMPL := linux
# TWI_IMPL := odroid
TWI_IMPL := gpio
objects += $(BUILD_TwiTool)/twi-master-$(TWI_IMPL).kernel.o
