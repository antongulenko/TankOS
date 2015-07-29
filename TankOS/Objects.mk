
ifneq ($(PLATFORM), AVR)
# Following paths are only available for the AVR platform.

all_objects := $(filter-out $(BUILDDIR)/kernel/processes/%,$(all_objects))

endif
