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
../shared/


# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS +=  \
../shared/twi_bgx1.c \
../tank_kernel_MASTER.c


PREPROCESSING_SRCS += 


ASM_SRCS += 


OBJS +=  \
shared/twi_bgx1.o \
tank_kernel_MASTER.o


OBJS_AS_ARGS +=  \
shared/twi_bgx1.o \
tank_kernel_MASTER.o


C_DEPS +=  \
shared/twi_bgx1.d \
tank_kernel_MASTER.d


C_DEPS_AS_ARGS +=  \
shared/twi_bgx1.d \
tank_kernel_MASTER.d


OUTPUT_FILE_PATH +=libKernel-Tank-MASTER.a

OUTPUT_FILE_PATH_AS_ARGS +=libKernel-Tank-MASTER.a

ADDITIONAL_DEPENDENCIES:=

OUTPUT_FILE_DEP:= ./makedep.mk

# AVR32/GNU C Compiler





shared/%.o: ../shared/%.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler
	$(QUOTE)C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-gcc.exe$(QUOTE)  -DAVR -DF_CPU=20000000  -I"..\..\AntonAvrLib"  -Os -g3 -Wall -c -std=gnu99 -save-temps -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -mmcu=atmega1284p  -o"$@" "$<" 
	@echo Finished building: $<

./%.o: .././%.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler
	$(QUOTE)C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-gcc.exe$(QUOTE)  -DAVR -DF_CPU=20000000  -I"..\..\AntonAvrLib"  -Os -g3 -Wall -c -std=gnu99 -save-temps -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -mmcu=atmega1284p  -o"$@" "$<" 
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
	@echo Invoking: AVR/GNU C Archiver
	$(QUOTE)C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-ar.exe$(QUOTE) -r  -o$(OUTPUT_FILE_PATH_AS_ARGS) $(OBJS_AS_ARGS) $(USER_OBJS) $(LIBS)
	@echo Finished building target: $@
	



# Other Targets
clean:
	-$(RM) $(OBJS_AS_ARGS)$(C_DEPS_AS_ARGS) $(EXECUTABLES) 
	rm -rf "libKernel-Tank-MASTER.hex" "libKernel-Tank-MASTER.lss" "libKernel-Tank-MASTER.eep" "libKernel-Tank-MASTER.map"
	