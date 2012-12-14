
include DefaultObjectVariables.mk

$(eval $(call set_test_objects,port,\
	$(KERNEL)/devices/port.o))
	
$(eval $(call set_test_objects,external_interrupts,\
	$(KERNEL)/devices/external_interrupts.o))
	
$(eval $(call set_test_objects,led,\
	$(KERNEL)/devices/port.o $(KERNEL)/devices/led.o))
	
$(eval $(call set_test_objects,button,\
	$(KERNEL)/devices/port.o $(KERNEL)/devices/button.o $(KERNEL)/devices/external_interrupts.o))

$(eval $(call set_test_objects,ButtonLoopReader,\
	$(KERNEL)/devices/port.o \
	$(KERNEL)/devices/external_interrupts.o \
	$(MISC)/ButtonLoopReader.o))

$(eval $(call set_test_objects,twi_driver,\
	$(BUILDDIR)/twi_driver_baseTests.o \
	$(BUILDDIR)/twi_driver_helper.o \
	$(KERNEL)/TWI/twi_driver.o))

$(eval $(call set_test_objects,twi_driver_slave,\
	$(BUILDDIR)/twi_driver_baseTests.o \
	$(BUILDDIR)/twi_driver_helper.o \
	$(KERNEL)/TWI/twi_driver.o \
	$(KERNEL)/TWI/twi_driver_slave.o))

$(eval $(call set_test_objects,twi_rpc_client,\
	$(BUILDDIR)/TestRpcClient.o \
	$(KERNEL)/TWI/twi_driver.o \
	$(KERNEL)/TWI/twi_rpc_client.o ))

$(eval $(call set_test_objects,twi_rpc_server,\
	$(KERNEL)/TWI/twi_driver.o \
	$(KERNEL)/TWI/twi_driver_slave.o \
	$(KERNEL)/TWI/twi_rpc_server.kernel.o ))
