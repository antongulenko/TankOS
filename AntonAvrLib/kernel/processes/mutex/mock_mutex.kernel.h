/*
 * mock_mutex.kernel
 *
 * Created: 26.04.2012 17:06:02
 *  Author: Anton
 */ 

#ifndef _MOCK_MUTEX_KERNEL_
#define _MOCK_MUTEX_KERNEL_

// This mock implementation does not actually ensure mutual exclusion.
// Can be used, if atomic_mutex is not appropriate and the real implementation
// is 'too much'.

Mutex mutex_create() {
	return NULL;
}

void mutex_lock(Mutex mutex) {
}

BOOL mutex_trylock(Mutex mutex) {
	return TRUE;
}

void mutex_release(Mutex mutex) {
}

#endif