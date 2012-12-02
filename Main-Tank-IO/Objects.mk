
# There are several configurations for the IO processor (USE_TWI implied):
# - With command queue (TWI_COMMAND_QUEUE)
#		- sleep-command-queue (TWI_COMMAND_QUEUE_SLEEP) + Pin-change-interrupt (FORCE_BUTTON_PIN_CHANGE_INTERRUPTS)
#			(sleep-command-queue without Pin-change-interrupts is not possible)
#		- loop-command-queue () + Pin-change-interrupt
#		- loop-command-queue + updateButtonStatus inside_command_queue
# - Without command queue
#		- Pin-change-interrupt (-> main just exits)
#		- loop-button-updates

USE_TWI:=

my_objects := $(objects)

TWI_COMMAND_QUEUE:=
undefine BUTTON_PIN_CHANGE_INTERRUPTS
undefine TWI_COMMAND_QUEUE_SLEEP
include DefaultMainObjects.mk
objects_$(project)_Main_loopCommandQueue.main := $(objects)

objects := $(my_objects)
undefine TWI_COMMAND_QUEUE
BUTTON_PIN_CHANGE_INTERRUPTS:=
undefine TWI_COMMAND_QUEUE_SLEEP
include DefaultMainObjects.mk
objects_$(project)_Main_empty.main := $(objects)

objects := $(my_objects)
undefine TWI_COMMAND_QUEUE
undefine BUTTON_PIN_CHANGE_INTERRUPTS
TWI_COMMAND_QUEUE_SLEEP:=
include DefaultMainObjects.mk
objects_$(project)_Main_updateButtonStatus.main := $(objects)

objects := $(my_objects)
undefine TWI_COMMAND_QUEUE
undefine BUTTON_PIN_CHANGE_INTERRUPTS
undefine TWI_COMMAND_QUEUE_SLEEP
include DefaultMainObjects.mk
