
# Select the platform/* based on the PLATFORM variable

ifneq ($(PLATFORM), Avr)
all_objects := $(filter-out $(BUILD_TankOS)/platform/Avr/%,$(all_objects))
objects := $(filter-out $(BUILD_TankOS)/platform/Avr/%,$(objects))
endif

ifneq ($(PLATFORM), Native)
all_objects := $(filter-out $(BUILD_TankOS)/platform/Native/%,$(all_objects))
objects := $(filter-out $(BUILD_TankOS)/platform/Native/%,$(objects))
endif
