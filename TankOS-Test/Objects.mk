
include DefaultObjectVariables.mk

$(eval $(call set_test_objects,kernel/devices/port,\
	$(KERNEL)/devices/port.o))

$(eval $(call set_test_objects,kernel/devices/external_interrupts,\
	$(KERNEL)/devices/external_interrupts.o))

$(eval $(call set_test_objects,kernel/devices/led,\
	$(KERNEL)/devices/port.o $(KERNEL)/devices/led.o))

$(eval $(call set_test_objects,kernel/devices/button,\
	$(KERNEL)/devices/port.o $(KERNEL)/devices/button.o $(KERNEL)/devices/external_interrupts.o))

$(eval $(call set_test_objects,misc/ButtonLoopReader,\
	$(KERNEL)/devices/port.o \
	$(KERNEL)/devices/external_interrupts.o \
	$(MISC)/ButtonLoopReader.o))

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

$(eval $(call set_test_objects,kernel/twi/rpc/client_functions,\
	$(BUILDDIR)/mocks/twi_driver_master.o \
	$(BUILDDIR)/mocks/rpc_client.o \
	$(KERNEL)/twi/rpc/client.o ))

$(eval $(call set_test_objects,kernel/twi/rpc/server,\
	$(BUILDDIR)/mocks/twi_driver_slave.o \
	$(KERNEL)/twi/rpc/server.o ))

$(eval $(call set_test_objects,kernel/twi/rpc/end_to_end,\
	$(BUILDDIR)/mocks/twi_driver_slave.o \
    $(BUILDDIR)/mocks/rpc_client.o \
    $(BUILDDIR)/mocks/twi_end_to_end.o \
    $(KERNEL)/twi/rpc/server.o \
    $(KERNEL)/twi/rpc/client.o \
    $(KERNEL)/twi/rpc/server_handler.o ))
