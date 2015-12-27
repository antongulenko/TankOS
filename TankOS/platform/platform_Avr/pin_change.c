#include "pin_change.h"
#include <uthash/utlist.h>
#include <kernel/klib.h>

BOOL PinHandlerList_add(PinHandlerList *list, PinInterruptHandler handler) {
	// Just increase refcount, if the given handler is already registered
	PinHandlerList i;
	LL_FOREACH(*list, i) {
		if (i->handler == handler) {
			i->refcount++;
			return TRUE;
		}
	}

	PinHandlerList elem = kalloc(sizeof(struct PinHandlerList));
	if (elem == NULL) return FALSE;
	elem->refcount = 1;
	elem->next = NULL;
	elem->handler = handler;
	LL_APPEND(*list, elem);
	return TRUE;
}

BOOL PinHandlerList_remove(PinHandlerList *list, PinInterruptHandler handler) {
	PinHandlerList i;
	LL_FOREACH(*list, i) {
		if (i->handler == handler) {
			i->refcount--;
			if (i->refcount == 0) {
				LL_DELETE(*list, i);
			}
			return TRUE;
		}
	}
	return FALSE;
}

BOOL PinHandlerList_handle(PinHandlerList list, uint8_t num, uint8_t *pin) {
	if (list == NULL) return FALSE;
	uint8_t pinVal = *pin;
	PinHandlerList i;
	LL_FOREACH(list, i) {
		i->handler(num, pinVal);
	}
	return TRUE;
}
