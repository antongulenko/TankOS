
include DefaultObjectVariables.mk

$(eval $(call set_test_objects,test_port, $(KERNEL)/devices/port.o))
