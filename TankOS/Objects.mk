
# Some paths are not available on every platform
# TODO write function or something to avoid the duplicated filter statements

ifneq ($(PLATFORM), Avr)
all_objects := $(filter-out $(BUILD_TankOS)/kernel/processes/avr/%,$(all_objects))
objects := $(filter-out $(BUILD_TankOS)/kernel/processes/avr/%,$(objects))
all_objects := $(filter-out $(BUILD_TankOS)/m1284P/%,$(all_objects))
objects := $(filter-out $(BUILD_TankOS)/m1284P/%,$(objects))
endif

ifneq ($(PLATFORM), Native)
all_objects := $(filter-out $(BUILD_TankOS)/simulation/%,$(all_objects))
objects := $(filter-out $(BUILD_TankOS)/simulation/%,$(objects))
endif
