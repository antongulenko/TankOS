#ifndef ___pin_change_interrupts___
#define ___pin_change_interrupts___

#include <tank_os_common.h>

// pinNum: 0..3, pinNum: 0..7
void enablePinChangeInterrupt(uint8_t portNum, uint8_t pinNum);

typedef void (*PinInterruptHandler)(uint8_t portNum, uint8_t pinBits);

// Multiple handlers can be defined for one interrupt.
// add-calls are counted: every add-call must have a separate remove-call
void addPinInterruptHandler(uint8_t portNum, PinInterruptHandler handler);
void removePinInterruptHandler(uint8_t portNum, PinInterruptHandler handler);


// ==== For the platform-specific implementation

typedef struct PinHandlerList {
	PinInterruptHandler handler;
	uint8_t refcount;
	struct PinHandlerList *next;
} *PinHandlerList;

BOOL PinHandlerList_add(PinHandlerList *list, PinInterruptHandler handler);
BOOL PinHandlerList_remove(PinHandlerList *list, PinInterruptHandler handler);
BOOL PinHandlerList_handle(PinHandlerList list, uint8_t num, uint8_t *pin);

#endif // ___pin_change_interrupts___
