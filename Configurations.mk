
ifdef CONFIG
ifeq ($(CONFIG), simulator-test)

    USE_PROCESS := true
    USE_SCHEDULER := true
    PROJ := Simulator-Test

endif
ifeq ($(CONFIG), $(filter $(CONFIG), simulator simulator-test))

    USE_PROCESS ?= false
    USE_SCHEDULER ?= false

    KERNEL_LOG := true
    USE_BUFFER_STDOUT := true
    USE_TWI := true

    PROJ ?= Simulator
    PLATFORM := Avr
    STUDIO := true
    DONT_LINK_ALL := true

    NOOPT := true
    DEBUG := true
    LSS := true

endif
ifeq ($(CONFIG), tests)

    PROJ := TankOS-Test
    PLATFORM = Native
    SPEED := true
default: run

endif
ifeq ($(CONFIG), io)

    PROJ := Tank-IO

endif
ifeq ($(CONFIG), driver)

    PROJ := Tank-Driver

endif
ifeq ($(CONFIG), $(filter $(CONFIG), tank io driver))

    KERNEL_LOG := true
    USE_BUFFER_STDOUT := true
    USE_TWI := true

    STUDIO := true
    PLATFORM := Avr
    LSS := true
    SPEED := true
    # DONT_LINK_ALL := true

    ifndef PROJ
        $(error Please define PROJ= on the command line)
    endif

endif
ifeq ($(CONFIG), twitool)

    PLATFORM := Native
    PROJ := TwiTool
    SPEED := true

endif
endif
