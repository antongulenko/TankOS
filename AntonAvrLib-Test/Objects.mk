
include DefaultObjectVariables.mk

$(eval $(call set_test_objects,port, $(KERNEL)/devices/port.o))
$(eval $(call set_test_objects,external_interrupts, $(KERNEL)/devices/external_interrupts.o))
