
tank_io := Kernel-Tank-IO/$(BUILD_DIRNAME)

objects_$(project)_Main-Tank-IO.main := $(objects) \
    $(tank_io)/tank_led.kernel.o \
    $(tank_io)/tank_button.kernel.o \
    $(tank_io)/tank_button_interrupts.kernel.o
