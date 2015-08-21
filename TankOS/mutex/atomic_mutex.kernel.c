/*
 * Created: 26.04.2012 17:06:02
 *  Author: Anton
 */

// This Mutex implementation simply disables interrupts to ensure
// mutual exclusion.

#include "mutex.h"
#include <tank_os_common.h>
#include <kernel/klib.h>

typedef struct AtomicMutex {
	BOOL interruptsWereEnabled;
} *AtomicMutex;

#define MUTEX Get(struct AtomicMutex, mutex)

Mutex mutex_create() {
    AtomicMutex mutex = kalloc(sizeof(struct AtomicMutex));
    if (!mutex) return Invalid(Mutex);
	return As(Mutex, mutex);
}

Mutex mutex_destroy(Mutex mutex) {
    if (IsValid(mutex)) {
        free(MUTEX);
    }
    return Invalid(Mutex);
}

void mutex_lock(Mutex mutex) {
	MUTEX->interruptsWereEnabled = interrupts_enabled();
	cli();
}

BOOL mutex_trylock(Mutex mutex) {
	mutex_lock(mutex);
	return TRUE;
}

void mutex_release(Mutex mutex) {
	if (MUTEX->interruptsWereEnabled)
		sei();
}
