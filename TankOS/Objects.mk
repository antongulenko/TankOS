
# Some paths are not available on every platform
# TODO write function or something to avoid the duplicated filter statements

ifneq ($(PLATFORM), Avr)
all_objects := $(filter-out $(BUILD_TankOS)/platform/Avr/%,$(all_objects))
objects := $(filter-out $(BUILD_TankOS)/platform/Avr/%,$(objects))
endif

ifneq ($(PLATFORM), Native)
all_objects := $(filter-out $(BUILD_TankOS)/platform/Native/%,$(all_objects))
objects := $(filter-out $(BUILD_TankOS)/platform/Native/%,$(objects))
endif
