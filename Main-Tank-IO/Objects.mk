
# There are several configurations for the IO processor:
#    - Main_empty: Use Pin-change-interrupt to update button-status
#    - Main_budyLoop: loop for button updates

USE_TWI := false

include DefaultMainObjects.mk
my_objects := $(objects)

objects += Kernel-Tank-IO/$(BUILD_DIRNAME)/tank_button_interrupts.kernel.o
objects_$(project)_Main_empty.main := $(objects)

objects := $(my_objects)
