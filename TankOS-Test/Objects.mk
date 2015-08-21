
BUILD_TESTS := $(BUILD_TankOS-Test)

# This is convenience to configure objects of testrunner mains
# Usage:
# $(eval $(call set_test_objects,test_file, some.o additional.o test.o objects.o))
define set_test_objects
    objects_$(project)_testrunners/$1.testrunner := \
        $(BUILD_Unity)/unity.o \
        $(BUILD_TankOS)/misc/klib.kernel.o \
        $(BUILD_TESTS)/mocks/printf.o \
        $(BUILD_TESTS)/$1.test.o \
        $2
    ifeq ($(PLATFORM), Native)
        objects_$(project)_testrunners/$1.testrunner += \
            $(BUILD_TankOS)/simulation/simulation.kernel.o
    endif
endef

$(eval $(call set_test_objects,misc/klib,\
    $(BUILD_TESTS)/mocks/port.o \
    ))

$(eval $(call set_test_objects,kernel/processes/process,\
    $(BUILD_TESTS)/mocks/process.o \
	$(KERNEL)/processes/process.o ))

$(eval $(call set_test_objects,kernel/processes/scheduler,\
    $(BUILD_TESTS)/mocks/process.o \
	$(KERNEL)/processes/process.o \
    $(KERNEL)/processes/scheduler.o ))

$(eval $(call set_test_objects,kernel/devices/port,\
    $(BUILD_TESTS)/mocks/port.o \
	$(KERNEL)/devices/port.o ))

$(eval $(call set_test_objects,kernel/devices/port-config,\
    $(BUILD_TESTS)/mocks/port.o \
	$(KERNEL)/devices/port.o ))

$(eval $(call set_test_objects,kernel/devices/timer,\
    $(BUILD_TESTS)/mocks/port.o \
	$(KERNEL)/devices/timer.o ))

$(eval $(call set_test_objects,devices/led,\
    $(BUILD_TESTS)/mocks/port.o \
	$(KERNEL)/devices/port.o \
    $(BUILD_TankOS)/devices/led.o ))

$(eval $(call set_test_objects,devices/button,\
    $(BUILD_TESTS)/mocks/port.o \
	$(KERNEL)/devices/port.o \
    $(BUILD_TankOS)/devices/button.o ))

$(eval $(call set_test_objects,devices/buttonGroup,\
    $(BUILD_TESTS)/mocks/port.o \
	$(KERNEL)/devices/port.o \
    $(BUILD_TankOS)/devices/button.o ))

$(eval $(call set_test_objects,devices/motor,\
	$(KERNEL)/devices/port.o \
    $(BUILD_TESTS)/mocks/port.o \
	$(BUILD_TankOS)/devices/motor.o ))

$(eval $(call set_test_objects,devices/motor_smooth,\
	$(KERNEL)/devices/port.o \
    $(BUILD_TESTS)/mocks/port.o \
	$(BUILD_TankOS)/devices/motor.o \
    $(BUILD_TankOS)/devices/motor_smooth.o \
    $(KERNEL)/mutex/mock_mutex.kernel.o ))

$(eval $(call set_test_objects,kernel/twi/driver/master,\
	$(BUILD_TESTS)/kernel/twi/driver/base_tests.o \
	$(BUILD_TESTS)/kernel/twi/driver/helper.o \
	$(KERNEL)/twi/driver/master.kernel.o \
    $(KERNEL)/twi/driver/master.o \
    $(KERNEL)/twi/driver/driver.o \
    $(BUILD_TESTS)/mocks/port.o ))

$(eval $(call set_test_objects,kernel/twi/driver/slave,\
	$(BUILD_TESTS)/kernel/twi/driver/base_tests.o \
	$(BUILD_TESTS)/kernel/twi/driver/helper.o \
    $(KERNEL)/twi/driver/driver.o \
    $(KERNEL)/twi/driver/slave.kernel.o \
	$(KERNEL)/twi/driver/slave.o \
    $(BUILD_TESTS)/mocks/port.o ))

$(eval $(call set_test_objects,kernel/twi/rpc/client,\
	$(BUILD_TESTS)/mocks/twi_driver_master.o \
	$(KERNEL)/twi/rpc/client.o ))

$(eval $(call set_test_objects,kernel/twi/rpc/server,\
	$(BUILD_TESTS)/mocks/twi_driver_slave.o \
	$(KERNEL)/twi/rpc/server.o ))

$(eval $(call set_test_objects,kernel/twi/rpc/client_functions,\
	$(BUILD_TESTS)/mocks/twi_driver_master.o \
	$(BUILD_TESTS)/mocks/rpc_client.o \
    $(BUILD_TESTS)/mocks/assertions.o \
    $(KERNEL)/twi/rpc/client_functions.o \
    $(KERNEL)/twi/rpc/strings.o \
	$(KERNEL)/twi/rpc/client.o ))

$(eval $(call set_test_objects,kernel/twi/rpc/client_functions_registry,\
	$(BUILD_TESTS)/mocks/twi_driver_master.o \
	$(BUILD_TESTS)/mocks/rpc_client.o \
    $(BUILD_TESTS)/mocks/rpc_client_registry.o \
    $(KERNEL)/twi/rpc/client_functions.o \
	$(KERNEL)/twi/rpc/client.o ))

$(eval $(call set_test_objects,kernel/twi/rpc/server_handler_functions,\
    $(BUILD_TESTS)/mocks/twi_driver_slave.o \
    $(BUILD_TESTS)/mocks/rpc_server.o \
    $(BUILD_TESTS)/mocks/twi_end_to_end.o \
    $(BUILD_TESTS)/mocks/assertions.o \
    $(KERNEL)/twi/rpc/strings.o \
    $(KERNEL)/twi/rpc/server.o \
    $(KERNEL)/twi/rpc/client.o \
    $(KERNEL)/twi/rpc/server_handler_functions.kernel.o \
    ))

$(eval $(call set_test_objects,kernel/twi/rpc/end_to_end,\
	$(BUILD_TESTS)/mocks/twi_driver_slave.o \
    $(BUILD_TESTS)/mocks/rpc_client.o \
    $(BUILD_TESTS)/mocks/rpc_server.o \
    $(BUILD_TESTS)/mocks/twi_end_to_end.o \
    $(BUILD_TESTS)/mocks/assertions.o \
    $(KERNEL)/twi/rpc/strings.o \
    $(KERNEL)/twi/rpc/client_functions.o \
    $(KERNEL)/twi/rpc/server.o \
    $(KERNEL)/twi/rpc/client.o \
    $(KERNEL)/twi/rpc/server_handler_functions.kernel.o ))

$(eval $(call set_test_objects,kernel/twi/rpc/strings,\
    $(KERNEL)/twi/rpc/strings.o ))

$(eval $(call set_test_objects,kernel/twi/services/hardware,\
    $(BUILD_TESTS)/mocks/assertions.o \
    $(BUILD_TESTS)/mocks/twi_driver_slave.o \
    $(BUILD_TESTS)/mocks/twi_end_to_end.o \
    $(KERNEL)/early_init.kernel.o \
    $(KERNEL)/early_init.o \
    $(BUILD_TankOS)/misc/memory.o \
    $(KERNEL)/millisecond_clock.o \
    $(KERNEL)/twi/services/hardware.o \
    $(KERNEL)/twi/services/hardware.kernel.o \
    $(KERNEL)/twi/rpc/strings.o \
    $(KERNEL)/twi/rpc/server.o \
    $(KERNEL)/twi/rpc/client.o \
    $(KERNEL)/twi/rpc/client_functions.o \
    $(KERNEL)/twi/rpc/server_handler_functions.kernel.o ))

$(eval $(call set_test_objects,kernel/twi/services/test,\
    $(BUILD_TESTS)/mocks/assertions.o \
    $(BUILD_TESTS)/mocks/twi_driver_slave.o \
    $(BUILD_TESTS)/mocks/twi_end_to_end.o \
    $(BUILD_TESTS)/kernel/twi/services/test.o \
    $(KERNEL)/twi/services/test.o \
    $(KERNEL)/twi/services/test.kernel.o \
    $(KERNEL)/twi/rpc/strings.o \
    $(KERNEL)/twi/rpc/server.o \
    $(KERNEL)/twi/rpc/client.o \
    $(KERNEL)/twi/rpc/client_functions.o \
    $(KERNEL)/twi/rpc/server_handler_functions.kernel.o ))

$(eval $(call set_test_objects,kernel/buffer_stdout,\
    $(KERNEL)/buffer_stdout.o \
    $(KERNEL)/mutex/mock_mutex.kernel.o ))

$(eval $(call set_test_objects,kernel/twi/services/buffer_stdout,\
    $(BUILD_TESTS)/mocks/assertions.o \
    $(BUILD_TESTS)/mocks/twi_driver_slave.o \
    $(BUILD_TESTS)/mocks/twi_end_to_end.o \
    $(BUILD_TESTS)/kernel/twi/services/test.o \
    $(KERNEL)/twi/services/buffer_stdout.o \
    $(KERNEL)/twi/services/buffer_stdout.kernel.o \
    $(KERNEL)/buffer_stdout.o \
    $(KERNEL)/mutex/mock_mutex.kernel.o \
    $(KERNEL)/twi/rpc/strings.o \
    $(KERNEL)/twi/rpc/server.o \
    $(KERNEL)/twi/rpc/client.o \
    $(KERNEL)/twi/rpc/client_functions.o \
    $(KERNEL)/twi/rpc/server_handler_functions.kernel.o ))
