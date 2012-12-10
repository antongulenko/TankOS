
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

$(eval $(call set_test_objects,twi_raw,\
	$(KERNEL)/TWI/twi_raw.o))
