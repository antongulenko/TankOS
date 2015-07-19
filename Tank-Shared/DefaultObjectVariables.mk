
KERNEL_BASE := TankOS/$(BUILD_DIRNAME)
KERNEL := $(KERNEL_BASE)/kernel
MISC := $(KERNEL_BASE)/misc

# This is convenience to configure objects of testrunner mains
# Usage:
# $(eval $(call set_test_objects,test_file, some.o additional.o test.o objects.o))
define set_test_objects
    objects_$(project)_testrunners/$1.testrunner := \
        Unity/$(BUILD_DIRNAME)/unity.o \
        $(BUILDDIR)/$1.test.o \
        $2
    ifeq ($(PLATFORM), Native)
        objects_$(project)_testrunners/$1.testrunner += \
            $(KERNEL_BASE)/native_simulation.kernel.o
    endif
endef
