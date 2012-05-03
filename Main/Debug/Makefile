################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL := cmd.exe
RM := rm -rf

USER_OBJS :=

LIBS := 
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
OUTPUT_FILE_PATH :=
OUTPUT_FILE_PATH_AS_ARGS :=
AVR_APP_PATH :=$$$AVR_APP_PATH$$$
QUOTE := "
ADDITIONAL_DEPENDENCIES:=
OUTPUT_FILE_DEP:=

# Every subdirectory with source files must be described here
SUBDIRS :=  \
../device_tests \
../simulator_tests


# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS +=  \
../Main.c \
../device_tests/Main_test_blink_reset_condition.c \
../device_tests/Main_test_blink_AllLeds.c \
../simulator_tests/Main_test_DMS_rr_two.c \
../simulator_tests/Main_test_rr_many.c \
../simulator_tests/Main_test_rr_two.c \
../simulator_tests/Main_test_switchProcess.c \
../simulator_tests/Main_test_switchProcess_many.c


PREPROCESSING_SRCS += 


ASM_SRCS += 


OBJS +=  \
Main.o \
device_tests/Main_test_blink_reset_condition.o \
device_tests/Main_test_blink_AllLeds.o \
simulator_tests/Main_test_DMS_rr_two.o \
simulator_tests/Main_test_rr_many.o \
simulator_tests/Main_test_rr_two.o \
simulator_tests/Main_test_switchProcess.o \
simulator_tests/Main_test_switchProcess_many.o


OBJS_AS_ARGS +=  \
Main.o \
device_tests/Main_test_blink_reset_condition.o \
device_tests/Main_test_blink_AllLeds.o \
simulator_tests/Main_test_DMS_rr_two.o \
simulator_tests/Main_test_rr_many.o \
simulator_tests/Main_test_rr_two.o \
simulator_tests/Main_test_switchProcess.o \
simulator_tests/Main_test_switchProcess_many.o


C_DEPS +=  \
Main.d \
device_tests/Main_test_blink_reset_condition.d \
device_tests/Main_test_blink_AllLeds.d \
simulator_tests/Main_test_DMS_rr_two.d \
simulator_tests/Main_test_rr_many.d \
simulator_tests/Main_test_rr_two.d \
simulator_tests/Main_test_switchProcess.d \
simulator_tests/Main_test_switchProcess_many.d


C_DEPS_AS_ARGS +=  \
Main.d \
device_tests/Main_test_blink_reset_condition.d \
device_tests/Main_test_blink_AllLeds.d \
simulator_tests/Main_test_DMS_rr_two.d \
simulator_tests/Main_test_rr_many.d \
simulator_tests/Main_test_rr_two.d \
simulator_tests/Main_test_switchProcess.d \
simulator_tests/Main_test_switchProcess_many.d


OUTPUT_FILE_PATH +=Main.elf

OUTPUT_FILE_PATH_AS_ARGS +=Main.elf

ADDITIONAL_DEPENDENCIES:=

OUTPUT_FILE_DEP:= ./makedep.mk

# AVR32/GNU C Compiler

















./%.o: .././%.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler
	$(QUOTE)C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-gcc.exe$(QUOTE)  -DF_CPU=20000000 -DAVR  -I"..\..\AntonAvrLib"  -Os -ffunction-sections -g3 -Wall -c -std=gnu99 -save-temps -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -mmcu=atmega1284p  -o"$@" "$<" 
	@echo Finished building: $<

device_tests/%.o: ../device_tests/%.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler
	$(QUOTE)C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-gcc.exe$(QUOTE)  -DF_CPU=20000000 -DAVR  -I"..\..\AntonAvrLib"  -Os -ffunction-sections -g3 -Wall -c -std=gnu99 -save-temps -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -mmcu=atmega1284p  -o"$@" "$<" 
	@echo Finished building: $<

simulator_tests/%.o: ../simulator_tests/%.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler
	$(QUOTE)C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-gcc.exe$(QUOTE)  -DF_CPU=20000000 -DAVR  -I"..\..\AntonAvrLib"  -Os -ffunction-sections -g3 -Wall -c -std=gnu99 -save-temps -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -mmcu=atmega1284p  -o"$@" "$<" 
	@echo Finished building: $<



# AVR32/GNU Preprocessing Assembler



# AVR32/GNU Assembler




ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: $(OUTPUT_FILE_PATH) $(ADDITIONAL_DEPENDENCIES)

$(OUTPUT_FILE_PATH): $(OBJS) $(USER_OBJS) $(OUTPUT_FILE_DEP)
	@echo Building target: $@
	@echo Invoking: AVR/GNU C Linker
	$(QUOTE)C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-gcc.exe$(QUOTE) -o$(OUTPUT_FILE_PATH_AS_ARGS) $(OBJS_AS_ARGS) $(USER_OBJS) $(LIBS) -Wl,-Map="Main.map" -Wl,--start-group -Wl,-lAntonAvrLib -Wl,-lm  -Wl,--end-group -Wl,-L"..\..\AntonAvrLib\Debug"  -Wl,--defsym=__stack=0x4000  -mmcu=atmega1284p  
	@echo Finished building target: $@
	"C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-objcopy.exe" -O ihex -R .eeprom -R .fuse -R .lock -R .signature  "Main.elf" "Main.hex"
	"C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-objcopy.exe" -j .eeprom  --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0  --no-change-warnings -O ihex "Main.elf" "Main.eep" || exit 0
	"C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-objdump.exe" -h -S "Main.elf" > "Main.lss"
	"C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-size.exe" -C --mcu=atmega1284p  "Main.elf"
	




# Other Targets
clean:
	-$(RM) $(OBJS_AS_ARGS)$(C_DEPS_AS_ARGS) $(EXECUTABLES) 
	rm -rf "Main.hex" "Main.lss" "Main.eep" "Main.map"
	