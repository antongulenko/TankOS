#ifndef RR_INTERNAL_H_
#define RR_INTERNAL_H_

#include "rr_api.h"

// This is the most relevant internal kernel-function of this module.
// It is implemented in rr_scheduler.c
Process rr_schedule(BOOL invokedFromTimer);

// Initialization function, that must be called before the scheduler is started (but after most other initialization).
// Takes the current process (at that time the main process) 'imports' it as a thread with the given prioity.
void rr_captureMainProcess(ThreadPriority prio);

#endif