
# There are several configurations for the IO processor:
#    - Main_empty: Use Pin-change-interrupt to update button-status
#    - Main_busyLoop: loop for button updates

objects_$(project)_Main_empty.main := $(objects) \
        Kernel-Tank-IO/$(BUILD_DIRNAME)/tank_button_interrupts.kernel.o
