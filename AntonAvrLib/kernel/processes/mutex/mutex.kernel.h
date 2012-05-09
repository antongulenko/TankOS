/*
 * mutex.kernel
 *
 * Created: 26.04.2012 17:06:02
 *  Author: Anton
 */ 

#ifndef _MUTEX_KERNEL_
#define _MUTEX_KERNEL_

// TODO put down some Mutex implementation :)

typedef struct {
	// TODO
} RealMutex, *PRealMutex;

Mutex mutex_create() {
	return (Mutex) malloc(sizeof(RealMutex));
}

void mutex_lock(Mutex mutex) {
	// TODO
}

BOOL mutex_trylock(Mutex mutex) {
	// TODO
}

void mutex_release(Mutex mutex) {
	// TODO
}

#endif