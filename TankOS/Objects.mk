
# Select the platform/platform_* based on the PLATFORM variable

# Memorize platform-specific objects
specific_all_objects := $(filter $(BUILD_TankOS)/platform/platform_%,$(all_objects))
specific_objects := $(filter $(BUILD_TankOS)/platform/platform_%,$(objects))

# Filter out all platform-specific objects
all_objects := $(filter-out $(BUILD_TankOS)/platform/platform_%,$(all_objects))
objects := $(filter-out $(BUILD_TankOS)/platform/platform_%,$(objects))

ifeq ($(PLATFORM), Avr)
	# For Avr, additionally handle different possible MCUs
	ifndef AVR_MCU
		$(error AVR_MCU must be defined)
	endif

	# Remove all platform/platform_Avr/avr_* folders except platform/platform_Avr/avr_$(AVR_MCU)
	avr_all_objects := $(filter $(BUILD_TankOS)/platform/platform_Avr/avr_%,$(specific_all_objects))
	avr_objects := $(filter $(BUILD_TankOS)/platform/platform_Avr/avr_%,$(specific_objects))
	specific_all_objects := $(filter-out $(BUILD_TankOS)/platform/platform_Avr/avr_%,$(specific_all_objects))
	specific_objects := $(filter-out $(BUILD_TankOS)/platform/platform_Avr/avr_%,$(specific_objects))
	specific_all_objects += $(filter $(BUILD_TankOS)/platform/platform_Avr/avr_$(AVR_MCU)/%,$(avr_all_objects))
	specific_objects += $(filter $(BUILD_TankOS)/platform/platform_Avr/avr_$(AVR_MCU)/%,$(avr_objects))
endif

# Add objects for the platform given by $(PLATFORM)
all_objects += $(filter $(BUILD_TankOS)/platform/platform_$(PLATFORM)/%,$(specific_all_objects))
objects += $(filter $(BUILD_TankOS)/platform/platform_$(PLATFORM)/%,$(specific_objects))
