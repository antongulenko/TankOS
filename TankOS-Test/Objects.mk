
include DefaultObjectVariables.mk

$(eval $(call set_test_objects,kernel/devices/port,\
    $(BUILDDIR)/mocks/port.o \
    $(BUILDDIR)/mocks/delay.o \
	$(KERNEL)/devices/port.o ))

$(eval $(call set_test_objects,kernel/devices/external_interrupts,\
	$(KERNEL)/devices/external_interrupts.o ))

$(eval $(call set_test_objects,kernel/devices/led,\
    $(BUILDDIR)/mocks/port.o \
    $(BUILDDIR)/mocks/delay.o \
	$(KERNEL)/devices/port.o \
    $(KERNEL)/devices/led.o ))

$(eval $(call set_test_objects,kernel/devices/button,\
    $(BUILDDIR)/mocks/port.o \
    $(BUILDDIR)/mocks/delay.o \
	$(KERNEL)/devices/port.o \
    $(KERNEL)/devices/button.o \
    $(KERNEL)/devices/external_interrupts.o ))

$(eval $(call set_test_objects,misc/ButtonLoopReader,\
	$(KERNEL)/devices/port.o \
	$(KERNEL)/devices/external_interrupts.o \
    $(BUILDDIR)/mocks/port.o \
	$(MISC)/ButtonLoopReader.o ))

$(eval $(call set_test_objects,kernel/twi/driver/master,\
	$(BUILDDIR)/kernel/twi/driver/base_tests.o \
	$(BUILDDIR)/kernel/twi/driver/helper.o \
	$(KERNEL)/twi/driver/master.o))

$(eval $(call set_test_objects,kernel/twi/driver/slave,\
	$(BUILDDIR)/kernel/twi/driver/base_tests.o \
	$(BUILDDIR)/kernel/twi/driver/helper.o \
	$(KERNEL)/twi/driver/master.o \
	$(KERNEL)/twi/driver/slave.o))

$(eval $(call set_test_objects,kernel/twi/rpc/client,\
	$(BUILDDIR)/mocks/twi_driver_master.o \
	$(KERNEL)/twi/rpc/client.o ))

$(eval $(call set_test_objects,kernel/twi/rpc/server,\
	$(BUILDDIR)/mocks/twi_driver_slave.o \
	$(KERNEL)/twi/rpc/server.o ))

$(eval $(call set_test_objects,kernel/twi/rpc/client_functions,\
	$(BUILDDIR)/mocks/twi_driver_master.o \
	$(BUILDDIR)/mocks/rpc_client.o \
    $(BUILDDIR)/mocks/assertions.o \
    $(KERNEL)/twi/rpc/client_functions.o \
    $(KERNEL)/twi/rpc/strings.o \
	$(KERNEL)/twi/rpc/client.o ))

$(eval $(call set_test_objects,kernel/twi/rpc/server_handler_functions,\
    $(BUILDDIR)/mocks/twi_driver_slave.o \
    $(BUILDDIR)/mocks/rpc_server.o \
    $(BUILDDIR)/mocks/twi_end_to_end.o \
    $(BUILDDIR)/mocks/assertions.o \
    $(KERNEL)/twi/rpc/strings.o \
    $(KERNEL)/twi/rpc/server.o \
    $(KERNEL)/twi/rpc/client.o \
    $(KERNEL)/twi/rpc/server_handler_functions.kernel.o \
    ))

$(eval $(call set_test_objects,kernel/twi/rpc/end_to_end,\
	$(BUILDDIR)/mocks/twi_driver_slave.o \
    $(BUILDDIR)/mocks/rpc_client.o \
    $(BUILDDIR)/mocks/rpc_server.o \
    $(BUILDDIR)/mocks/twi_end_to_end.o \
    $(BUILDDIR)/mocks/assertions.o \
    $(KERNEL)/twi/rpc/strings.o \
    $(KERNEL)/twi/rpc/client_functions.o \
    $(KERNEL)/twi/rpc/server.o \
    $(KERNEL)/twi/rpc/client.o \
    $(KERNEL)/twi/rpc/server_handler_functions.kernel.o ))

$(eval $(call set_test_objects,kernel/twi/rpc/strings,\
    $(KERNEL)/twi/rpc/strings.o ))

$(eval $(call set_test_objects,kernel/twi/services/hardware,\
    $(BUILDDIR)/mocks/assertions.o \
    $(BUILDDIR)/mocks/twi_driver_slave.o \
    $(BUILDDIR)/mocks/twi_end_to_end.o \
    $(KERNEL)/early_init.kernel.o \
    $(KERNEL)/early_init.o \
    $(MISC)/memory.o \
    $(KERNEL)/millisecond_clock.o \
    $(KERNEL)/twi/services/hardware.o \
    $(KERNEL)/twi/services/hardware.kernel.o \
    $(KERNEL)/twi/rpc/strings.o \
    $(KERNEL)/twi/rpc/server.o \
    $(KERNEL)/twi/rpc/client.o \
    $(KERNEL)/twi/rpc/client_functions.o \
    $(KERNEL)/twi/rpc/server_handler_functions.kernel.o ))

$(eval $(call set_test_objects,kernel/twi/services/test,\
    $(BUILDDIR)/mocks/assertions.o \
    $(BUILDDIR)/mocks/twi_driver_slave.o \
    $(BUILDDIR)/mocks/twi_end_to_end.o \
    $(BUILDDIR)/kernel/twi/services/test.o \
    $(KERNEL)/twi/services/test.o \
    $(KERNEL)/twi/services/test.kernel.o \
    $(KERNEL)/twi/rpc/strings.o \
    $(KERNEL)/twi/rpc/server.o \
    $(KERNEL)/twi/rpc/client.o \
    $(KERNEL)/twi/rpc/client_functions.o \
    $(KERNEL)/twi/rpc/server_handler_functions.kernel.o ))
