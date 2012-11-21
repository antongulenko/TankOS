/*
 * atomic_mutex.kernel
 *
 * Created: 26.04.2012 17:06:02
 *  Author: Anton
 */

// This Mutex implementation simply disables interrupts to ensure
// mutual exclusion.

#include "mutex.h"

typedef struct {
	BOOL interruptsWereEnabled;
} AtomicMutex;

Mutex mutex_create() {
	return (Mutex) malloc(sizeof(AtomicMutex));
}

void mutex_lock(Mutex mutex) {
	((AtomicMutex *) mutex)->interruptsWereEnabled = SREG & _BV(7);
	cli();
}

BOOL mutex_trylock(Mutex mutex) {
	mutex_lock(mutex);
	return TRUE;
}

void mutex_release(Mutex mutex) {
	if (((AtomicMutex *) mutex)->interruptsWereEnabled)
		sei();
}
