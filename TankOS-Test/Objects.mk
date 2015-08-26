
# Hack to inject test-specific header into TankOS modules
ifeq ($(PLATFORM), Native)
    # Important: simulation.h/.c must only handle things required by modules in platform/Avr/
    # Otherwise this will lead to conflicts when compiling non-Test projects for the Native platform.
    $(FAKE_TARGETS_DIR)/TankOS_cflags += -include TankOS-Test/mocks/simulation.h
endif
CFLAGS += -include TankOS-Test/mocks/simulation.h

BUILD_TESTS := $(BUILD_TankOS-Test)

# This is convenience to configure objects of testrunner mains
# Usage:
# $(eval $(call set_test_objects,test_file, some.o additional.o test.o objects.o))
define set_test_objects
    objects_$(project)_testrunners/$1.testrunner := \
        $(BUILD_Unity)/unity.o \
        $(BUILD_TankOS)/kernel/klib.kernel.o \
        $(BUILD_TESTS)/mocks/printf.o \
        $(BUILD_TESTS)/mocks/simulation.o \
        $(BUILD_TESTS)/$1.test.o \
        $2
endef

$(eval $(call set_test_objects,kernel/klib,\
    $(BUILD_TESTS)/mocks/port.o \
    ))

$(eval $(call set_test_objects,process/process,\
    $(BUILD_TESTS)/mocks/process.o \
	$(BUILD_TankOS)/process/process.o ))

$(eval $(call set_test_objects,process/scheduler,\
    $(BUILD_TESTS)/mocks/process.o \
	$(BUILD_TankOS)/process/process.o \
    $(BUILD_TankOS)/platform/Avr/idle.o \
    $(BUILD_TankOS)/process/scheduler.o ))

$(eval $(call set_test_objects,devices/port,\
    $(BUILD_TESTS)/mocks/port.o \
	$(BUILD_TankOS)/devices/port.o ))

$(eval $(call set_test_objects,devices/port-config,\
    $(BUILD_TESTS)/mocks/port.o \
	$(BUILD_TankOS)/devices/port.o ))

$(eval $(call set_test_objects,devices/timer,\
    $(BUILD_TESTS)/mocks/port.o \
	$(BUILD_TankOS)/devices/timer.o ))

$(eval $(call set_test_objects,devices/led,\
    $(BUILD_TESTS)/mocks/port.o \
    $(BUILD_TESTS)/mocks/delay.o \
	$(BUILD_TankOS)/devices/port.o \
    $(BUILD_TankOS)/devices/led.o ))

$(eval $(call set_test_objects,devices/button,\
    $(BUILD_TESTS)/mocks/port.o \
	$(BUILD_TankOS)/devices/port.o \
    $(BUILD_TankOS)/devices/button.o ))

$(eval $(call set_test_objects,devices/buttonGroup,\
    $(BUILD_TESTS)/mocks/port.o \
	$(BUILD_TankOS)/devices/port.o \
    $(BUILD_TankOS)/devices/button.o ))

$(eval $(call set_test_objects,devices/motor,\
	$(BUILD_TankOS)/devices/port.o \
    $(BUILD_TESTS)/mocks/port.o \
	$(BUILD_TankOS)/devices/motor.o ))

$(eval $(call set_test_objects,devices/motor_smooth,\
	$(BUILD_TankOS)/devices/port.o \
    $(BUILD_TESTS)/mocks/port.o \
	$(BUILD_TankOS)/devices/motor.o \
    $(BUILD_TankOS)/devices/motor_smooth.o \
    $(BUILD_TankOS)/process/mock_mutex.kernel.o ))

$(eval $(call set_test_objects,twi/driver/master,\
	$(BUILD_TESTS)/twi/driver/base_tests.o \
	$(BUILD_TESTS)/twi/driver/helper.o \
	$(BUILD_TankOS)/platform/Avr/twi/master.kernel.o \
    $(BUILD_TankOS)/platform/Avr/twi/master.o \
    $(BUILD_TankOS)/platform/Avr/twi/driver.o \
    $(BUILD_TESTS)/mocks/port.o ))

$(eval $(call set_test_objects,twi/driver/slave,\
	$(BUILD_TESTS)/twi/driver/base_tests.o \
	$(BUILD_TESTS)/twi/driver/helper.o \
    $(BUILD_TankOS)/platform/Avr/twi/driver.o \
    $(BUILD_TankOS)/platform/Avr/twi/slave.kernel.o \
	$(BUILD_TankOS)/platform/Avr/twi/slave.o \
    $(BUILD_TankOS)/platform/Avr/twi/master.o \
    $(BUILD_TESTS)/mocks/port.o ))

$(eval $(call set_test_objects,twi/rpc/client,\
	$(BUILD_TESTS)/mocks/twi_driver_master.o \
	$(BUILD_TankOS)/twi/rpc/client.o ))

$(eval $(call set_test_objects,twi/rpc/server,\
	$(BUILD_TESTS)/mocks/twi_driver_slave.o \
	$(BUILD_TankOS)/twi/rpc/server.o ))

$(eval $(call set_test_objects,twi/rpc/client_functions,\
	$(BUILD_TESTS)/mocks/twi_driver_master.o \
	$(BUILD_TESTS)/mocks/rpc_client.o \
    $(BUILD_TESTS)/mocks/assertions.o \
    $(BUILD_TankOS)/twi/rpc/client_functions.o \
    $(BUILD_TankOS)/twi/rpc/strings.o \
	$(BUILD_TankOS)/twi/rpc/client.o ))

$(eval $(call set_test_objects,twi/rpc/client_functions_registry,\
	$(BUILD_TESTS)/mocks/twi_driver_master.o \
	$(BUILD_TESTS)/mocks/rpc_client.o \
    $(BUILD_TESTS)/mocks/rpc_client_registry.o \
    $(BUILD_TankOS)/twi/rpc/client_functions.o \
	$(BUILD_TankOS)/twi/rpc/client.o ))

$(eval $(call set_test_objects,twi/rpc/server_handler_functions,\
    $(BUILD_TESTS)/mocks/twi_driver_slave.o \
    $(BUILD_TESTS)/mocks/rpc_server.o \
    $(BUILD_TESTS)/mocks/twi_end_to_end.o \
    $(BUILD_TESTS)/mocks/assertions.o \
    $(BUILD_TankOS)/twi/rpc/strings.o \
    $(BUILD_TankOS)/twi/rpc/server.o \
    $(BUILD_TankOS)/twi/rpc/client.o \
    $(BUILD_TankOS)/twi/rpc/server_handler_functions.kernel.o \
    ))

$(eval $(call set_test_objects,twi/rpc/end_to_end,\
	$(BUILD_TESTS)/mocks/twi_driver_slave.o \
    $(BUILD_TESTS)/mocks/rpc_client.o \
    $(BUILD_TESTS)/mocks/rpc_server.o \
    $(BUILD_TESTS)/mocks/twi_end_to_end.o \
    $(BUILD_TESTS)/mocks/assertions.o \
    $(BUILD_TankOS)/twi/rpc/strings.o \
    $(BUILD_TankOS)/twi/rpc/client_functions.o \
    $(BUILD_TankOS)/twi/rpc/server.o \
    $(BUILD_TankOS)/twi/rpc/client.o \
    $(BUILD_TankOS)/twi/rpc/server_handler_functions.kernel.o ))

$(eval $(call set_test_objects,twi/rpc/strings,\
    $(BUILD_TankOS)/twi/rpc/strings.o ))

$(eval $(call set_test_objects,twi/services/hardware,\
    $(BUILD_TESTS)/mocks/assertions.o \
    $(BUILD_TESTS)/mocks/memory.o \
    $(BUILD_TESTS)/mocks/twi_driver_slave.o \
    $(BUILD_TESTS)/mocks/twi_end_to_end.o \
    $(BUILD_TankOS)/platform/Avr/early_init.kernel.o \
    $(BUILD_TankOS)/platform/Avr/early_init.o \
    $(BUILD_TankOS)/platform/Avr/memory.o \
    $(BUILD_TankOS)/kernel/millisecond_clock.o \
    $(BUILD_TankOS)/twi/services/hardware.o \
    $(BUILD_TankOS)/twi/services/hardware.kernel.o \
    $(BUILD_TankOS)/twi/services/hardware_client.kernel.o \
    $(BUILD_TankOS)/twi/rpc/strings.o \
    $(BUILD_TankOS)/twi/rpc/server.o \
    $(BUILD_TankOS)/twi/rpc/client.o \
    $(BUILD_TankOS)/twi/rpc/client_functions.o \
    $(BUILD_TankOS)/twi/rpc/server_handler_functions.kernel.o ))

$(eval $(call set_test_objects,twi/services/example,\
    $(BUILD_TESTS)/mocks/assertions.o \
    $(BUILD_TESTS)/mocks/twi_driver_slave.o \
    $(BUILD_TESTS)/mocks/twi_end_to_end.o \
    $(BUILD_TESTS)/twi/services/helper.o \
    $(BUILD_TankOS)/twi/services/example.o \
    $(BUILD_TankOS)/twi/services/example.kernel.o \
    $(BUILD_TankOS)/twi/services/example_client.kernel.o \
    $(BUILD_TankOS)/twi/rpc/strings.o \
    $(BUILD_TankOS)/twi/rpc/server.o \
    $(BUILD_TankOS)/twi/rpc/client.o \
    $(BUILD_TankOS)/twi/rpc/client_functions.o \
    $(BUILD_TankOS)/twi/rpc/server_handler_functions.kernel.o ))

$(eval $(call set_test_objects,kernel/buffer_stdout,\
    $(BUILD_TankOS)/platform/Avr/buffer_stdout.o \
    $(BUILD_TankOS)/process/mock_mutex.kernel.o ))

$(eval $(call set_test_objects,twi/services/buffer_stdout,\
    $(BUILD_TESTS)/mocks/assertions.o \
    $(BUILD_TESTS)/mocks/twi_driver_slave.o \
    $(BUILD_TESTS)/mocks/twi_end_to_end.o \
    $(BUILD_TESTS)/twi/services/helper.o \
    $(BUILD_TankOS)/twi/services/buffer_stdout.o \
    $(BUILD_TankOS)/twi/services/buffer_stdout.kernel.o \
    $(BUILD_TankOS)/twi/services/buffer_stdout_client.kernel.o \
    $(BUILD_TankOS)/platform/Avr/buffer_stdout.o \
    $(BUILD_TankOS)/process/mock_mutex.kernel.o \
    $(BUILD_TankOS)/twi/rpc/strings.o \
    $(BUILD_TankOS)/twi/rpc/server.o \
    $(BUILD_TankOS)/twi/rpc/client.o \
    $(BUILD_TankOS)/twi/rpc/client_functions.o \
    $(BUILD_TankOS)/twi/rpc/server_handler_functions.kernel.o ))

$(eval $(call set_test_objects,process/idle,\
    $(BUILD_TESTS)/mocks/scheduler.o \
    $(BUILD_TESTS)/mocks/process.o \
    $(BUILD_TankOS)/process/idle/idle.o ))

$(eval $(call set_test_objects,process/RoundRobin,\
    $(BUILD_TESTS)/mocks/scheduler.o \
    $(BUILD_TESTS)/mocks/process.o \
    $(BUILD_TankOS)/process/RoundRobin/rr.o ))
