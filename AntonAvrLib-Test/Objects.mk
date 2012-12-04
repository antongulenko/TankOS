
include DefaultObjectVariables.mk

$(eval $(call set_test_objects,port, $(KERNEL)/devices/port.o $(BUILDDIR)/fake_port.o))
$(eval $(call set_test_objects,external_interrupts, $(KERNEL)/devices/external_interrupts.o $(BUILDDIR)/fake_port.o))
$(eval $(call set_test_objects,led, $(KERNEL)/devices/led.o $(KERNEL)/devices/port.o $(BUILDDIR)/fake_port.o))
