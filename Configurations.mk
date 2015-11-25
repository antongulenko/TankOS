
ifdef CONFIG
ifeq ($(CONFIG), usb)

    AVR_FREQ := 20000000
    AVR_MCU := attiny84
    AVR_SYMBOL := __AVR_ATtiny84__

	USE_BUFFER_STDOUT := true
    KERNEL_LOG := true
    USE_TWI := true

    PROJ := USB-to-TWI
    PLATFORM := Avr
    LSS := true
    SPEED := true

endif
ifeq ($(CONFIG), simulator-test)

    USE_PROCESS := true
    USE_SCHEDULER := true
    PROJ := Simulator-Testing

endif
ifeq ($(CONFIG), $(filter $(CONFIG), simulator simulator-test))

    # USE_PROCESS := true
    # USE_SCHEDULER := true

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

    # AVR_FREQ := 7848929
    # AVR_FREQ := 8000000
    AVR_FREQ := 20000000
    PROJ := Tank-IO

endif
ifeq ($(CONFIG), driver)

    # AVR_FREQ := 8073357
    # AVR_FREQ := 8000000
    AVR_FREQ := 20000000
    PROJ := Tank-Driver

endif
ifeq ($(CONFIG), arm)

    AVR_FREQ := 20000000
    #AVR_FREQ := 7930251
    PROJ := Tank-Arm

endif
ifeq ($(CONFIG), $(filter $(CONFIG), tank io driver arm))

    KERNEL_LOG := true
    USE_BUFFER_STDOUT := true
    USE_TWI := true

    STUDIO := true
    PLATFORM := Avr
    LSS := true
    SPEED := true

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

# Default values
ifndef AVR_FREQ
    AVR_FREQ := 20000000
endif
ifndef AVR_MCU
    AVR_MCU := atmega1284p
endif
ifndef AVR_SYMBOL
    AVR_SYMBOL := __AVR_ATmega1284P__
endif
