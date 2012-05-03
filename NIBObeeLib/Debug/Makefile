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
SUBDIRS := 


# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS +=  \
../../../NIBObeeLib/src/nibobee/analog.c \
../../../NIBObeeLib/src/nibobee/base.c \
../../../NIBObeeLib/src/nibobee/bgx1.c \
../../../NIBObeeLib/src/nibobee/clock.c \
../../../NIBObeeLib/src/nibobee/delay.c \
../../../NIBObeeLib/src/nibobee/i2cmaster.c \
../../../NIBObeeLib/src/nibobee/led.c \
../../../NIBObeeLib/src/nibobee/line.c \
../../../NIBObeeLib/src/nibobee/motpid.c \
../../../NIBObeeLib/src/nibobee/motpwm.c \
../../../NIBObeeLib/src/nibobee/odometry.c \
../../../NIBObeeLib/src/nibobee/sens.c \
../../../NIBObeeLib/src/nibobee/usart.c


PREPROCESSING_SRCS += 


ASM_SRCS += 


OBJS +=  \
analog.o \
base.o \
bgx1.o \
clock.o \
delay.o \
i2cmaster.o \
led.o \
line.o \
motpid.o \
motpwm.o \
odometry.o \
sens.o \
usart.o


OBJS_AS_ARGS +=  \
analog.o \
base.o \
bgx1.o \
clock.o \
delay.o \
i2cmaster.o \
led.o \
line.o \
motpid.o \
motpwm.o \
odometry.o \
sens.o \
usart.o


C_DEPS +=  \
analog.d \
base.d \
bgx1.d \
clock.d \
delay.d \
i2cmaster.d \
led.d \
line.d \
motpid.d \
motpwm.d \
odometry.d \
sens.d \
usart.d


C_DEPS_AS_ARGS +=  \
analog.d \
base.d \
bgx1.d \
clock.d \
delay.d \
i2cmaster.d \
led.d \
line.d \
motpid.d \
motpwm.d \
odometry.d \
sens.d \
usart.d


OUTPUT_FILE_PATH +=libNIBObeeLib.a

OUTPUT_FILE_PATH_AS_ARGS +=libNIBObeeLib.a

ADDITIONAL_DEPENDENCIES:=

OUTPUT_FILE_DEP:= ./makedep.mk

# AVR32/GNU C Compiler



























./%.o: ../../../NIBObeeLib/src/nibobee/%.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler
	$(QUOTE)C:\Program Files (x86)\Atmel\Atmel Studio 6.0\extensions\Atmel\AVRGCC\3.3.2.31\AVRToolchain\bin\avr-gcc.exe$(QUOTE)  -D_NIBOBEE_ -DAVR -DF_CPU=20000000  -I"..\..\..\NIBObeeLib\include"  -Os -g3 -Wall -c -std=gnu99 -save-temps -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -mmcu=atmega1284p  -o"$@" "$<" 
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
	rm -rf "libNIBObeeLib.hex" "libNIBObeeLib.lss" "libNIBObeeLib.eep" "libNIBObeeLib.map"
	