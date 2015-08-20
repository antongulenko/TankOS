/*
 * Created: 11.02.2012 12:10:15
 *  Author: Anton
 */

#ifndef MUTEX_H_
#define MUTEX_H_

#include <tank_os_common.h>

// Use handle and not defined struct here, to enable multiple implementations.
DEFINE_HANDLE(Mutex);

Mutex mutex_create();
Mutex mutex_destroy(Mutex mutex);

void mutex_lock(Mutex mutex);
BOOL mutex_trylock(Mutex mutex);
void mutex_release(Mutex mutex);

#endif /* MUTEX_H_ */
