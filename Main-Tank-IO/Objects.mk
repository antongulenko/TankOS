
# There are several configurations for the IO processor (USE_TWI implied):
# - With command queue (TWI_COMMAND_QUEUE)
#		- sleep-command-queue (TWI_COMMAND_QUEUE_SLEEP) + Pin-change-interrupt (FORCE_BUTTON_PIN_CHANGE_INTERRUPTS)
#			(sleep-command-queue without Pin-change-interrupts is not possible)
#		- loop-command-queue () + Pin-change-interrupt
#		- loop-command-queue + updateButtonStatus inside_command_queue
# - Without command queue
#		- Pin-change-interrupt (-> main just exits)
#		- loop-button-updates

# Decide which main() should be used when not testing.
ifeq ($(origin MAIN_$(project)), undefined)
	ifneq ($(origin TWI_COMMAND_QUEUE), undefined)
		MAIN_$(project) := $(BUILDDIR)/Main_loopCommandQueue.main.o
	else
		ifneq ($(origin BUTTON_PIN_CHANGE_INTERRUPTS), undefined)
			MAIN_$(project) := $(BUILDDIR)/Main_empty.kernel.o
		else
			MAIN_$(project) := $(BUILDDIR)/Main_updateButtonStatus.kernel.o
		endif
	endif
endif

include DefaultMainObjects.mk
