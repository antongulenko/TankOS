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
../tank_IO/


# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS +=  \
../../Main/Main.c \
../tank_IO/LedOperations.c


PREPROCESSING_SRCS += 


ASM_SRCS += 


OBJS +=  \
Main.o \
tank_IO/LedOperations.o


OBJS_AS_ARGS +=  \
Main.o \
tank_IO/LedOperations.o


C_DEPS +=  \
Main.d \
tank_IO/LedOperations.d


C_DEPS_AS_ARGS +=  \
Main.d \
tank_IO/LedOperations.d


OUTPUT_FILE_PATH +=Main-Tank-IO.elf

OUTPUT_FILE_PATH_AS_ARGS +=Main-Tank-IO.elf

ADDITIONAL_DEPENDENCIES:=

OUTPUT_FILE_DEP:= ./makedep.mk

# AVR32/GNU C Compiler





./%.o: ../../Main/%.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler
	$(QUOTE)C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-gcc.exe$(QUOTE)  -DAVR -DF_CPU=20000000  -I"..\..\AntonAvrLib" -I"..\..\Kernel-Tank-IO"  -Os -ffunction-sections -g3 -Wall -c -std=gnu99 -save-temps -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -mmcu=atmega1284p  -o"$@" "$<" 
	@echo Finished building: $<

tank_IO/%.o: ../tank_IO/%.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler
	$(QUOTE)C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-gcc.exe$(QUOTE)  -DAVR -DF_CPU=20000000  -I"..\..\AntonAvrLib" -I"..\..\Kernel-Tank-IO"  -Os -ffunction-sections -g3 -Wall -c -std=gnu99 -save-temps -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -mmcu=atmega1284p  -o"$@" "$<" 
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
	$(QUOTE)C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-gcc.exe$(QUOTE) -o$(OUTPUT_FILE_PATH_AS_ARGS) $(OBJS_AS_ARGS) $(USER_OBJS) $(LIBS) -Wl,-Map="Main-Tank-IO.map" -Wl,--start-group -Wl,-lAntonAvrLib -Wl,-lKernel-Tank-IO -Wl,-lm  -Wl,--end-group -Wl,-L"..\..\AntonAvrLib\Debug" -Wl,-L"..\..\Kernel-Tank-IO\Debug"   -mmcu=atmega1284p  
	@echo Finished building target: $@
	"C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-objcopy.exe" -O ihex -R .eeprom -R .fuse -R .lock -R .signature  "Main-Tank-IO.elf" "Main-Tank-IO.hex"
	"C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-objcopy.exe" -j .eeprom  --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0  --no-change-warnings -O ihex "Main-Tank-IO.elf" "Main-Tank-IO.eep" || exit 0
	"C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-objdump.exe" -h -S "Main-Tank-IO.elf" > "Main-Tank-IO.lss"
	"C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-size.exe" -C --mcu=atmega1284p  "Main-Tank-IO.elf"
	




# Other Targets
clean:
	-$(RM) $(OBJS_AS_ARGS)$(C_DEPS_AS_ARGS) $(EXECUTABLES) 
	rm -rf "Main-Tank-IO.hex" "Main-Tank-IO.lss" "Main-Tank-IO.eep" "Main-Tank-IO.map"
	