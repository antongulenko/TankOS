/*
 * Created: 26.04.2012 17:06:02
 *  Author: Anton
 */

// This mock implementation does not actually ensure mutual exclusion.
// Can be used, if atomic_mutex is not appropriate and the real implementation
// is 'too much'.

#include "mutex.h"

Mutex mutex_create() {
	return Invalid(Mutex);
}

void mutex_lock(Mutex mutex) {
}

BOOL mutex_trylock(Mutex mutex) {
	return TRUE;
}

void mutex_release(Mutex mutex) {
}
