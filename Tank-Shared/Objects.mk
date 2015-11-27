
# Exclude objects for specific AVR MCUs
all_objects := $(filter-out $(BUILD_Tank-Shared)/avr_%,$(all_objects))
objects := $(filter-out $(BUILD_Tank-Shared)/avr_%,$(objects))
