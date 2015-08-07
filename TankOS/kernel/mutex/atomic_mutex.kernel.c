/*
 * Created: 26.04.2012 17:06:02
 *  Author: Anton
 */

// This Mutex implementation simply disables interrupts to ensure
// mutual exclusion.

#include "mutex.h"

typedef struct AtomicMutex {
	BOOL interruptsWereEnabled;
} AtomicMutex;

Mutex mutex_create() {
	return As(Mutex, malloc(sizeof(AtomicMutex)));
}

void mutex_lock(Mutex mutex) {
	((AtomicMutex *) mutex.pointer)->interruptsWereEnabled = SREG & _BV(7);
	cli();
}

BOOL mutex_trylock(Mutex mutex) {
	mutex_lock(mutex);
	return TRUE;
}

void mutex_release(Mutex mutex) {
	if (((AtomicMutex *) mutex.pointer)->interruptsWereEnabled)
		sei();
}
