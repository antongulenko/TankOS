################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL := cmd.exe
RM := rm -rf

USER_OBJS :=

LIBS := -Wl,-lNIBObeeLib -Wl,-lAntonAvrLib 
PROJ := 

O_SRCS := 
C_SRCS := 
S_SRCS := 
S_UPPER_SRCS := 
OBJ_SRCS := 
ASM_SRCS := 
PREPROCESSING_SRCS := 
OBJS := 
OBJS_AS_ARGS := 
C_DEPS := 
C_DEPS_AS_ARGS := 
EXECUTABLES := 
LIB_AS_ARGS :=
OUTPUT_FILE_PATH :=
OUTPUT_FILE_PATH_AS_ARGS :=
HEX_FLASH_FILE_PATH :=
HEX_FLASH_FILE_PATH_AS_ARGS :=
HEX_EEPROM_FILE_PATH :=
HEX_EEPROM_FILE_PATH_AS_ARGS :=
LSS_FILE_PATH :=
LSS_FILE_PATH_AS_ARGS :=
MAP_FILE_PATH :=
MAP_FILE_PATH_AS_ARGS :=
AVR_APP_PATH :=C:/Program Files (x86)/Atmel/AVR Studio 5.0/AVR ToolChain/bin/
QUOTE := "
ADDITIONAL_DEPENDENCIES:=
OUTPUT_FILE_DEP:=

# Every subdirectory with source files must be described here
SUBDIRS :=  \
../kernel


# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS +=  \
../kernel/analog_ext.c \
../kernel/nibobee_kernel.c \
../Main.c \
../Main_test_blink_reset_condition.c \
../Main_test_clock_routine.c \
../Main_test_DMS_simple.c \
../Main_test_sleep_clock_onDevice.c \
../Main_test_switchProcess.c \
../Main_test_switchProcess_many.c


PREPROCESSING_SRCS += 


ASM_SRCS += 


OBJS +=  \
kernel/analog_ext.o \
kernel/nibobee_kernel.o \
Main.o \
Main_test_blink_reset_condition.o \
Main_test_clock_routine.o \
Main_test_DMS_simple.o \
Main_test_sleep_clock_onDevice.o \
Main_test_switchProcess.o \
Main_test_switchProcess_many.o


OBJS_AS_ARGS +=  \
kernel/analog_ext.o \
kernel/nibobee_kernel.o \
Main.o \
Main_test_blink_reset_condition.o \
Main_test_clock_routine.o \
Main_test_DMS_simple.o \
Main_test_sleep_clock_onDevice.o \
Main_test_switchProcess.o \
Main_test_switchProcess_many.o


C_DEPS +=  \
kernel/analog_ext.d \
kernel/nibobee_kernel.d \
Main.d \
Main_test_blink_reset_condition.d \
Main_test_clock_routine.d \
Main_test_DMS_simple.d \
Main_test_sleep_clock_onDevice.d \
Main_test_switchProcess.d \
Main_test_switchProcess_many.d


C_DEPS_AS_ARGS +=  \
kernel/analog_ext.d \
kernel/nibobee_kernel.d \
Main.d \
Main_test_blink_reset_condition.d \
Main_test_clock_routine.d \
Main_test_DMS_simple.d \
Main_test_sleep_clock_onDevice.d \
Main_test_switchProcess.d \
Main_test_switchProcess_many.d


OUTPUT_FILE_PATH +=NIBObee.elf

OUTPUT_FILE_PATH_AS_ARGS +=NIBObee.elf

HEX_FLASH_FILE_PATH +=NIBObee.hex

HEX_FLASH_FILE_PATH_AS_ARGS +=NIBObee.hex

HEX_EEPROM_FILE_PATH +=NIBObee.eep

HEX_EEPROM_FILE_PATH_AS_ARGS +=NIBObee.eep

LSS_FILE_PATH +=NIBObee.lss

LSS_FILE_PATH_AS_ARGS +=NIBObee.lss

MAP_FILE_PATH =NIBObee.map

MAP_FILE_PATH_AS_ARGS =NIBObee.map

LIB_AS_ARGS +=libNIBObee.a

ADDITIONAL_DEPENDENCIES:= $(HEX_FLASH_FILE_PATH) $(LSS_FILE_PATH) $(HEX_EEPROM_FILE_PATH) size

OUTPUT_FILE_DEP:= ./makedep.mk

# AVR/GNU C Compiler



















kernel/%.o: ../kernel/%.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler
	$(QUOTE)$(AVR_APP_PATH)avr-gcc.exe$(QUOTE) -D_NIBOBEE_ -DF_CPU=20000000 -DAVR  -I"..\..\..\NIBObeeLib\include" -I"..\..\AntonAvrLib"  -Os -ffunction-sections -Wall -c -std=gnu99 -save-temps  -mmcu=atmega1284p   -MD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo Finished building: $<

./%.o: .././%.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler
	$(QUOTE)$(AVR_APP_PATH)avr-gcc.exe$(QUOTE) -D_NIBOBEE_ -DF_CPU=20000000 -DAVR  -I"..\..\..\NIBObeeLib\include" -I"..\..\AntonAvrLib"  -Os -ffunction-sections -Wall -c -std=gnu99 -save-temps  -mmcu=atmega1284p   -MD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo Finished building: $<



# AVR/GNU Assembler




ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: $(OUTPUT_FILE_PATH) $(ADDITIONAL_DEPENDENCIES)

# AVR/GNU C/C++ Linker
$(OUTPUT_FILE_PATH): $(OBJS) $(USER_OBJS) $(OUTPUT_FILE_DEP)
	@echo Building target: $@
	@echo Invoking: AVR/GNU C/C++ Linker
	$(QUOTE)$(AVR_APP_PATH)avr-gcc.exe$(QUOTE) -Wl,-L"..\..\NIBObeeLib\Release" -Wl,-L"..\..\AntonAvrLib\Release"  -Wl,--gc-sections --rodata-writable -mrelax  -mmcu=atmega1284p  -Wl,-Map=$(MAP_FILE_PATH_AS_ARGS) -o$(OUTPUT_FILE_PATH_AS_ARGS) $(OBJS_AS_ARGS) $(USER_OBJS) $(LIBS)
	@echo Finished building target: $@



$(HEX_FLASH_FILE_PATH): $(OUTPUT_FILE_PATH)
	$(QUOTE)$(AVR_APP_PATH)avr-objcopy.exe$(QUOTE) -O ihex -R .eeprom -R .fuse -R .lock -R .signature  $(QUOTE)$<$(QUOTE) $(QUOTE)$@$(QUOTE)

$(HEX_EEPROM_FILE_PATH): $(OUTPUT_FILE_PATH)
	-$(QUOTE)$(AVR_APP_PATH)avr-objcopy.exe$(QUOTE) -j .eeprom --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0 --no-change-warnings -O ihex $(QUOTE)$<$(QUOTE) $(QUOTE)$@$(QUOTE) || exit 0

$(LSS_FILE_PATH): $(OUTPUT_FILE_PATH)
	$(QUOTE)$(AVR_APP_PATH)avr-objdump.exe$(QUOTE) -h -S $(QUOTE)$<$(QUOTE) > $(QUOTE)$@$(QUOTE)

size: $(OUTPUT_FILE_PATH)
	@$(QUOTE)$(AVR_APP_PATH)avr-size.exe$(QUOTE) -C --mcu=atmega1284p $(OUTPUT_FILE_PATH_AS_ARGS)

# Other Targets
clean:
	-$(RM) $(OBJS_AS_ARGS)$(C_DEPS_AS_ARGS) $(EXECUTABLES) $(LIB_AS_ARGS) $(HEX_FLASH_FILE_PATH_AS_ARGS) $(HEX_EEPROM_FILE_PATH_AS_ARGS) $(LSS_FILE_PATH_AS_ARGS) $(MAP_FILE_PATH_AS_ARGS)

