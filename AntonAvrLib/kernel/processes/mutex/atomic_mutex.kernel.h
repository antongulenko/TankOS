/*
 * atomic_mutex.kernel
 *
 * Created: 26.04.2012 17:06:02
 *  Author: Anton
 */ 

#ifndef _ATOMIC_MUTEX_KERNEL_
#define _ATOMIC_MUTEX_KERNEL_

// This Mutex implementation simply disables interrupts to ensure
// mutual exclusion.

Mutex mutex_create() {
	return NULL;
}

void mutex_lock(Mutex mutex) {
	cli();
}

BOOL mutex_trylock(Mutex mutex) {
	cli();
	return TRUE;
}

void mutex_release(Mutex mutex) {
	sei();
}

#endif