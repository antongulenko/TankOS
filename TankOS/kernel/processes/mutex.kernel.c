/*
 * Created: 26.04.2012 17:06:02
 *  Author: Anton
 */

// TODO put down some Mutex implementation :)

#include <kernel/mutex/mutex.h>
#include <misc/klib.h>

typedef struct RealMutex {
	// TODO
} RealMutex, *PRealMutex;

Mutex mutex_create() {
	return As(Mutex, kalloc(sizeof(RealMutex)));
}

Mutex mutex_destroy(Mutex mutex) {
    // TODO
    return Invalid(Mutex);
}

void mutex_lock(Mutex mutex) {
	// TODO
}

BOOL mutex_trylock(Mutex mutex) {
	// TODO
	return TRUE;
}

void mutex_release(Mutex mutex) {
	// TODO
}
